{ inputs, pkgs, ... }:
{
	programs.ags = {
		enable = true;
		
		configDir = ./ags-config;

		extraPackages = with pkgs; [
			inputs.astal.packages.${pkgs.system}.battery
			fzf
		];
	};
}
