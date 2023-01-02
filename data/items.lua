return {
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
		},
		consume = 0.3
	},

	['bandage'] = {
		label = 'Bandage',
		weight = 115,
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		}
	},

	['black_money'] = {
		label = 'Dirty Money',
	},

	['burger'] = {
		label = 'Burger',
		weight = 220,
		client = {
			status = { hunger = 200000 },
			anim = 'eating',
			prop = 'burger',
			usetime = 2500,
			notification = 'You ate a delicious burger'
		},
	},

	['cola'] = {
		label = 'eCola',
		weight = 350,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ecola_can`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
			usetime = 2500,
			notification = 'You quenched your thirst with cola'
		}
	},

	['parachute'] = {
		label = 'Parachute',
		weight = 8000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 1500
		}
	},

	['garbage'] = {
		label = 'Garbage',
	},

	['paperbag'] = {
		label = 'Paper Bag',
		weight = 1,
		stack = false,
		close = false,
		consume = 0
	},

	['identification'] = {
		label = 'Identification',
	},

	['panties'] = {
		label = 'Knickers',
		weight = 10,
		consume = 0,
		client = {
			status = { thirst = -100000, stress = -25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
			usetime = 2500,
		}
	},

	['lockpick'] = {
		label = 'Lockpick',
		weight = 160,
	},

	['phone'] = {
		label = 'Phone',
		weight = 190,
		stack = false,
		consume = 0,
		client = {
			add = function(total)
				if total > 0 then
					pcall(function() return exports.npwd:setPhoneDisabled(false) end)
				end
			end,

			remove = function(total)
				if total < 1 then
					pcall(function() return exports.npwd:setPhoneDisabled(true) end)
				end
			end
		}
	},

	['money'] = {
		label = 'Money',
	},

	['mustard'] = {
		label = 'Mustard',
		weight = 500,
		client = {
			status = { hunger = 25000, thirst = 25000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
			usetime = 2500,
			notification = 'You.. drank mustard'
		}
	},

	['water'] = {
		label = 'Water',
		weight = 500,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 2500,
			cancel = true,
			notification = 'You drank some refreshing water'
		}
	},

	['radio'] = {
		label = 'Radio',
		weight = 1000,
		stack = false,
		allowArmed = true
	},

	['armour'] = {
		label = 'Bulletproof Vest',
		weight = 3000,
		stack = false,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500
		}
	},

	['clothing'] = {
		label = 'Clothing',
		consume = 0,
	},

	['mastercard'] = {
		label = 'Mastercard',
		stack = false,
		weight = 10,
	},

	['scrapmetal'] = {
		label = 'Scrap Metal',
		weight = 80,
	},

	['alive_chicken'] = {
		label = 'Living chicken',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['blowpipe'] = {
		label = 'Blowtorch',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['bread'] = {
		label = 'Bread',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['cannabis'] = {
		label = 'Cannabis',
		weight = 3,
		stack = true,
		close = true,
		description = nil
	},

	['carokit'] = {
		label = 'Body Kit',
		weight = 3,
		stack = true,
		close = true,
		description = nil
	},

	['carotool'] = {
		label = 'Tools',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['clothe'] = {
		label = 'Cloth',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['copper'] = {
		label = 'Copper',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['cutted_wood'] = {
		label = 'Cut wood',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['diamond'] = {
		label = 'Diamond',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['essence'] = {
		label = 'Gas',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['fabric'] = {
		label = 'Fabric',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['fish'] = {
		label = 'Fish',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['fixkit'] = {
		label = 'Repair Kit',
		weight = 3,
		stack = true,
		close = true,
		description = nil
	},

	['fixtool'] = {
		label = 'Repair Tools',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['gazbottle'] = {
		label = 'Gas Bottle',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['gold'] = {
		label = 'Gold',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['iron'] = {
		label = 'Iron',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['marijuana'] = {
		label = 'Marijuana',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['medikit'] = {
		label = 'Medikit',
		weight = 2,
		stack = true,
		close = true,
		description = nil
	},

	['packaged_chicken'] = {
		label = 'Chicken fillet',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['packaged_plank'] = {
		label = 'Packaged wood',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['petrol'] = {
		label = 'Oil',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['petrol_raffin'] = {
		label = 'Processed oil',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['slaughtered_chicken'] = {
		label = 'Slaughtered chicken',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['stone'] = {
		label = 'Stone',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['washed_stone'] = {
		label = 'Washed stone',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['wood'] = {
		label = 'Wood',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	['wool'] = {
		label = 'Wool',
		weight = 1,
		stack = true,
		close = true,
		description = nil
	},

	--wasabi fishing
	['anchovy'] = {
		label = 'Anchovy',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},

	['fishbait'] = {
		label = 'Fish Bait',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},

	['fishingrod'] = {
		label = 'Fishing Rod',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},

	['salmon'] = {
		label = 'Salmon',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},

	['trout'] = {
		label = 'Trout',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},

	['tuna'] = {
		label = 'Tuna',
		weight = 20,
		stack = true,
		close = true,
		description = nil
	},

	['m_jbib_41_0'] = {
		label = 'm_jbib_41_0',
		weight = 20,
		description = 'Clothes Item can be used',
		client = {
			export = 'clothes_item.wear_clothes'
		}
	},

	['m_jbib_51_0'] = {
		label = 'm_jbib_51_0',
		weight = 20,
		description = 'Clothes Item can be used',
		client = {
			export = 'clothes_item.wear_clothes'
		}
	},
	
    ['scuba_set'] = {
		label = 'Scuba Set',
		weight = 2000,
		description = 'Diving equipment, longer underwater',
		client = {
			export = 'esx_scuba.wear'
		}
	},
	
    ['scuba_fins'] = {
		label = 'Scuba Fins',
		weight = 200,
		description = 'Diving equipment, swimming assitance',
		client = {
			export = 'esx_scuba.wear'
		}
	}
}