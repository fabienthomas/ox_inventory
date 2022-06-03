return {
	
	--[[
	['testburger'] = {
		label = 'Test Burger',
		weight = 220,
		degrade = 60,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			export = 'ox_inventory_examples.testburger'
		},
		server = {
			export = 'ox_inventory_examples.testburger',
			test = 'what an amazingly delicious burger, amirite?'
		},
		buttons = {
			{
				label = 'Lick it',
				action = function(slot)
					print('You licked the burger')
				end
			},
			{
				label = 'Squeeze it',
				action = function(slot)
					print('You squeezed the burger :(')
				end
			}
		}
	},
	]]

	['empty_item'] = {
		label = 'empty item',
		stack = false,
		loot = false,
		shop = false
	},

	['bandage'] = {
		label = 'Bandage',
		description = "Permet de soigner efficacement les saignements.",
		weight = 115,
		category = {"medicine"},
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		},
		loot = {
			tier = 1,
			rarity = 10,
			quantity = {1,3}
		},
		shop = {
			sell = 10,
			buy = 3,
			rand = 0.2
		},
		crafting = {
			blueprint = {},
			tools = {
				WEAPON_KNIFE = 10 -- percent of durability consumed
			},
			ingredients = {
				garbage_rag = 2,
				food_vodka = 1
			},
			duration = 300,
			total = 3
		}
	},

	['black_money'] = {
		label = 'Argent sale',
		description = "Va falloir faire quelque chose pour ce petit paquet de thune",
		weight = 1,
		category = {"money"},
		loot = false,
		shop = false
	},

	['burger'] = {
		label = 'Burger',
		description = "Un sandwich ou plutôt ce qu'il en reste, ça calera une dent creuse ou une petite faim",
		weight = 220,
		category = {"food"},
		stack = false,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500
		},
		loot = {
			tier = 2,
			rarity = 5,
			quantity = 1
		},
		shop = {
			sell = 12,
			buy = 4,
			rand = 0.2
		}
	},

	['cola'] = {
		label = 'eCola',
		description = "Un vestige emblématique du monde d'avant, faut en profiter tant qu'il en reste !",
		weight = 350,
		category = {"food"},
		stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500
		},
		loot = {
			tier = 1,
			rarity = 5,
			quantity = 1
		},
		shop = {
			sell = 10,
			buy = 3,
			rand = 0.2
		}
	},

	['parachute'] = {
		label = 'Parachute',
		description = "T'as vu beaucoup d'avions ces derniers temps ?",
		weight = 5000,
		category = {"equipment"},
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		},
		loot = {
			tier = 3,
			rarity = 1,
			quantity = 1
		},
		shop = {
			sell = 100,
			buy = 33,
			rand = 0.2
		}
	},

	['garbage'] = {
		label = 'Déchet insignifiant',
		description = "Je vois pas trop à quoi ça pourrait servir...",
		weight = 250,
		stack = false,
		category = {"garbage"},
		loot = {
			tier = 1,
			rarity = 5,
			quantity = 1
		},
		shop = false
	},

	['paperbag'] = {
		label = 'Sac en papier',
		description = "Un vulgaire sac en papier, mais qui peut me permettre d'augmenter ma capacité de stockage",
		weight = 10,
		category = {"garbage"},
		stack = false,
		close = false,
		consume = 0,
		loot = {
			tier = 1,
			rarity = 5,
			quantity = 1
		},
		shop = {
			sell = 10,
			buy = 3,
			rand = 0.2
		}
	},

	['identification'] = {
		label = 'Identification',
		stack = false,
		loot = false,
		shop = false
	},

	['lockpick'] = {
		label = 'Crochet à serrure',
		description = "Je ne veux pas savoir ce que tu feras avec ça !",
		weight = 160,
		category = {"tools"},
		stack = false,
		client = {
			anim = { dict = 'anim@amb@clubhouse@tutorial@bkr_tut_ig3@', clip = 'machinic_loop_mechandplayer' },
			disable = { move = true, car = true, combat = true },
			usetime = 5000,
			cancel = true
		},
		loot = {
			tier = 2,
			rarity = 2,
			quantity = 1
		},
		shop = {
			sell = 100,
			buy = 33,
			rand = 0.2
		}
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 and GetResourceState('npwd') == 'started' then
					exports.npwd:setPhoneDisabled(false)
				end
			end,

			remove = function(total)
				if total < 1 and GetResourceState('npwd') == 'started' then
					exports.npwd:setPhoneDisabled(true)
				end
			end
		},
		loot = false,
		shop = false
	},

	['money'] = {
		label = 'Argent',
		description = "Va falloir faire quelque chose pour ce petit paquet de thune",
		weight = 1,
		category = {"money"},
		loot = false,
		shop = false
	},

	['mustard'] = {
		label = 'Moutarde',
		description = "Un pot de moutarde, ça ne se périme pas il me semble",
		weight = 250,
		category = {"food"},
		stack = false,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500
		},
		loot = {
			tier = 1,
			rarity = 3,
			quantity = 1
		},
		shop = {
			sell = 3,
			buy = 1,
			rand = 0.2
		}
	},

	['water'] = {
		label = 'Bouteille d\'eau',
		description = "Une bouteille d'eau jamais ouverte, quelle aubaine",
		weight = 500,
		category = {"food"},
		stack = false,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true
		},
		loot = {
			tier = 2,
			rarity = 5,
			quantity = 1
		},
		shop = {
			sell = 100,
			buy = 33,
			rand = 0.2
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		consume = 0,
		allowArmed = true,
		category = {"money"},
		loot = false,
		shop = false
	},

	['armour'] = {
		label = 'Gillet pare-balle',
		description = "Se protéger correctement devrait être remboursé par la sécu de nos jours, non ?",
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
		},
		category = {"equipment"},
		loot = {
			tier = 4,
			rarity = 3,
			quantity = 1
		},
		shop = {
			sell = 250,
			buy = 83,
			rand = 0.2
		}
	},

	--------------------------------------------------------
	-- CUSTOM ADDITIONS

	['med_medikit'] = {
		label = 'Trousse de soin',
		description = "Le top, choppé dans un stock de l'armée, ça soigne tout et vite !",
		weight = 500,
		category = {"medicine"},
		stack = false,
		client = {
			status = { infection = -200000 },
			usetime = 1500,
			cancel = false
		},
		loot = {
			tier = 3,
			rarity = 5,
			quantity = 1
		},
		shop = {
			sell = 210,
			buy = 70,
			rand = 0.2
		},
		crafting = {
			blueprint = {},
			tools = {},
			ingredients = {
				paperbag = 1,
				med_antibiotics = 1,
				med_delladamol = 1,
				bandage = 4,
				garbage_rag = 2
			},
			duration = 1200,
			total = 1
		}
	},

	['med_antibiotics'] = {
		label = 'Antibiotiques',
		description = "Pas automatique, certes, mais efficace en cas d'infection !",
		weight = 150,
		category = {"medicine"},
		stack = true,
		client = {
			status = { infection = -200000 },
			usetime = 1500,
			cancel = false
		},
		loot = {
			tier = 2,
			rarity = 5,
			quantity = {1,3}
		},
		shop = {
			sell = 20,
			buy = 7,
			rand = 0.2
		}
	},

	['med_alcopatch'] = {
		label = 'Alco Patch',
		description = "Des patchs pour arrêter de boire.. mouai",
		weight = 150,
		category = {"medicine"},
		stack = true,
		client = {},
		loot = {
			tier = 1,
			rarity = 3,
			quantity = {1,3}
		},
		shop = {
			sell = 15,
			buy = 5,
			rand = 0.2
		}
	},

	['med_delladamol'] = {
		label = 'Delladamol',
		description = "Un anti-douleur puissant, trop puissant !",
		weight = 150,
		category = {"medicine"},
		stack = true,
		client = {},
		loot = {
			tier = 1,
			rarity = 3,
			quantity = {1,3}
		},
		shop = {
			sell = 15,
			buy = 5,
			rand = 0.2
		}
	},

	['garbage_rag'] = {
		label = 'Rags (charpie)',
		description = "On dirait du coton, en tous cas c'est made in USAAAAAAAAA",
		weight = 250,
		category = {"garbage"},
		stack = true,
		client = {},
		loot = {
			tier = 1,
			rarity = 6,
			quantity = {1,3}
		},
		shop = {
			sell = 30,
			buy = 10,
			rand = 0.2
		}
	},

	['food_vodka'] = {
		label = 'Bouteille de vodka',
		description = "De la Vodka russe, ça fout le feu ce truc, litéralement",
		weight = 330,
		category = {"food"},
		stack = false,
		client = {
			status = { thirst = -200000, stress = -200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_vodka_bottle`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500
		},
		loot = {
			tier = 2,
			rarity = 5,
			quantity = 1
		},
		shop = {
			sell = 60,
			buy = 20,
			rand = 0.2
		}
	},

	--------------------------------------------------------
}
