
/*
 * Daimos
 * Created by Eqela Studio 2.0b7.4
 */

public class Daimos : SEEntity
{
	SESprite zombie;
	int h;
	int w;
	public static int mx;
	public static int my;
	int p_x;
	int p_y;

	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		p_x = MainScene.x;
		p_y = MainScene.y;
		rsc.prepare_image("myzombie", "zombie", 0.1*w);
		zombie = add_sprite_for_image(SEImage.for_resource("myzombie"));
		zombie.move(Math.random(0,w), Math.random(0,h));
	}

	public void tick(TimeVal now, double delta)
	{
		mx = zombie.get_x();
		my = zombie.get_y();
		p_x = MainScene.x;
		p_y = MainScene.y;
		base.tick(now, delta);
		zombie.move(mx+(p_x-mx)/25, my+(p_y-my)/25);
	}

	public void cleanup()
	{
		base.cleanup();
	}
}
