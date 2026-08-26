// Thanks to magic nipples for base of this monster :) (reddoc in question)
//=========================================================
// monster_missing is not found
//=========================================================

#include "extdll.h"
#include "util.h"
#include "cbase.h"
#include "monsters.h"
#include "customentity.h"
#include "effects.h"
#include "decals.h"
#include "shake.h"
#include "player.h"
#include "schedule.h"
#include "weapons.h"
#include "gamerules.h"
#include "client.h"

class CMissing : public CBaseAnimating
{
	void Spawn(void);
	void Precache(void);

	void EXPORT Think(void);
	void EXPORT Touch(CBaseEntity* pOther);

	int TakeDamage(entvars_t* pevInflictor, entvars_t* pevAttacker, float flDamage, int bitsDamageType);
	int Classify(void);
	void TraceAttack(entvars_t* pevAttacker, float flDamage, Vector vecDir, TraceResult* ptr, int bitsDamageType);

	CBaseEntity* pPlayer;
};

LINK_ENTITY_TO_CLASS(monster_missing, CMissing);

void CMissing::Spawn(void)
{
	Precache( );

	SET_MODEL(ENT(pev), "models/missing.mdl");

	UTIL_SetOrigin(pev, pev->origin);
	UTIL_SetSize(pev, VEC_HUMAN_HULL_MIN, VEC_HUMAN_HULL_MAX);

	pev->solid = SOLID_BBOX;
	pev->movetype = MOVETYPE_NOCLIP;

	pev->flags |= FL_MONSTER;
	pev->takedamage = DAMAGE_YES;
	pev->health = 100;

	pev->nextthink = gpGlobals->time + 0.01;

	ALERT(at_console, "Half-Life by Valve LLC\n");
	pPlayer = NULL;
	pPlayer = UTIL_PlayerByIndex(1);

	pev->sequence = LookupSequence("walk");
	pev->frame = 0;
	pev->framerate = 1.0;
	ResetSequenceInfo();	


	EMIT_SOUND_DYN(ENT(pev), CHAN_AUTO, "missing/drone.wav", 0.8, 2, 0, RANDOM_LONG(90, 110));
}

void CMissing::Precache(void)
{
	PRECACHE_MODEL("models/missing.mdl");
	PRECACHE_SOUND("missing/drone.wav");
	PRECACHE_SOUND("missing/scream.wav");
}

void CMissing::Think(void)
{
	StudioFrameAdvance();

	pev->effects = EF_NOINTERP;

	if (RANDOM_LONG(0, 50) == 50)
		pev->sequence = LookupSequence("pause");
	else
		pev->sequence = LookupSequence("walk");

	if ((!pPlayer) || (pPlayer == NULL))
		pPlayer = UTIL_PlayerByIndex(1);

	if (pPlayer)
	{
		if (pPlayer->pev->health > 0)
		{
			pev->angles.y = UTIL_VecToYaw(pPlayer->pev->origin - pev->origin);

			UTIL_MakeVectors(pev->angles);
			float enemydist = fabs(pPlayer->pev->origin.x - pev->origin.x);
			pev->velocity = gpGlobals->v_forward * (90 + (enemydist / 5));
			pev->velocity.z = 0;

			if (FBitSet(pPlayer->pev->flags, FL_ONGROUND))
			{
				int m_hEnemyHeight;
				if (FBitSet(pPlayer->pev->flags, FL_DUCKING))
					m_hEnemyHeight = pPlayer->pev->origin.z - 18;
				else
					m_hEnemyHeight = pPlayer->pev->origin.z - 36;

				TraceResult tr;
				UTIL_TraceLine(pev->origin, pPlayer->pev->origin + Vector(0, 0, -36), ignore_monsters, ignore_glass, ENT(pev), &tr);

				//ALERT(at_console, "%f\n", (pev->origin - pPlayer->pev->origin).Length());
				if (tr.flFraction == 1)
					pev->origin.z = m_hEnemyHeight;
			}
		}
		else
		{
			CLIENT_PRINTF(ENT(pPlayer->pev), print_console, "Fatal Error: Entity is Not a Player: 2\n");
			SERVER_COMMAND("disconnect\n");
			pev->velocity = g_vecZero;
			pev->framerate = 0.0;
		}
	}

	pev->nextthink = gpGlobals->time + 0.01;

	if (pPlayer->pev->health <= 50)
		pev->skin = 1;
	else
		pev->skin = 0;

	if (RANDOM_LONG(0, 4) >= 4)
		EMIT_SOUND_DYN(ENT(pev), CHAN_AUTO, "missing/scream.wav", 0.8, 2, 0, RANDOM_LONG(90, 110));
	else
		STOP_SOUND(ENT(pev), CHAN_AUTO, "missing/scream.wav");
}

void CMissing::Touch(CBaseEntity* pOther)
{
	pOther->TakeDamage(pOther->pev, pev, 200, 0);
}

//=========================================================
// Override all damage
//=========================================================
int CMissing::TakeDamage(entvars_t* pevInflictor, entvars_t* pevAttacker, float flDamage, int bitsDamageType)
{
	pev->health = pev->max_health / 2; // always trigger the 50% damage aitrigger
	return TRUE;
}

//=========================================================
// Classify - indicates this monster's place in the 
// relationship table.
// Missing is like angry to anyone and like everyone is scared by him so
//=========================================================
int	CMissing::Classify(void)
{
	return	CLASS_ALIEN_MONSTER;
}

void CMissing::TraceAttack(entvars_t* pevAttacker, float flDamage, Vector vecDir, TraceResult* ptr, int bitsDamageType)
{
	UTIL_Ricochet(ptr->vecEndPos, 1.0);
	AddMultiDamage(pevAttacker, this, flDamage, bitsDamageType);
}