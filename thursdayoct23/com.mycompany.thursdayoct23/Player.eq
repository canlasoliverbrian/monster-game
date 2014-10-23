
/*
 * Player
 * Created by Eqela Studio 2.0b7.4
 */

public class Player:SEEntity
{   
	SESprite rick;
	int h;
	int w;

	public void initialize(SEResourceCache rsc)
	{
	
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("myrick", "rick", 0.1*w);
		rick = add_sprite_for_image(SEImage.for_resource("myrick"));
		rick.move(Math.random(0,w), Math.random(0,h));
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
		rick.move(MainScene.x, MainScene.y);
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
