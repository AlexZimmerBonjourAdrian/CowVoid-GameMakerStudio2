    if (escudo_activado) {
        //var escudo = instance_create_layer(x, y, "Instances_2", EscudoEnorme);
        if(!unavezhasonado)
		{audio_play_sound(SFX_PlayerShip_Shield3_LoopEnd, 1, false, 0.8);
			var escudo = instance_create_layer(x, y, "Instances_2", EscudoEnorme);
		unavezhasonado=true;
		escudo.owner = id;
        escudo.sprite_index = EscudoChicharron;
        escudo.image_xscale = 3.2;
        escudo.image_yscale = 3.2;
		}
		
    } 