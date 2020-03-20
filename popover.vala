using Xfce;

public class ButtonPlugin : Xfce.PanelPlugin {
	private Gtk.MenuButton button;
	private Gtk.Popover popover;
	public override void @construct () {

		button = new Gtk.MenuButton();
		popover = new Gtk.Popover(button);

		button.set_image(
			new Gtk.Image.from_icon_name (
				"open-menu-symbolic",
				Gtk.IconSize.LARGE_TOOLBAR
			)
		);
		var menu_container = new Gtk.VBox(false,0);
		menu_container.pack_start(new Gtk.Label("Hello World 1"));
		menu_container.pack_start(new Gtk.Label("Hello World 2"));
		menu_container.pack_start(new Gtk.Label("Hello World 3"));
		popover.add(menu_container);
		popover.show_all ();
		popover.hide();
        button.popover = popover;
		add (button);
		button.show ();

		add_action_widget (button);
		destroy.connect (() => { Gtk.main_quit (); });
		show_all();
	}
}

[ModuleInit]
public Type xfce_panel_module_init (TypeModule module) {
	return typeof (ButtonPlugin);
}
