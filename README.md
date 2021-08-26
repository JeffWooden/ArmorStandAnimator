# ArmorStand Animator
Helps creators to easily create armor stand animations in Minecraft.

## How to install
To install this datapack, download `ArmorStandAnimator-<version>.zip` from [this page](https://github.com/JeffWooden/ArmorStandAnimator-BlockbenchPlugin/releases). Then follow [this tutorial](https://minecraft.fandom.com/wiki/Tutorials/Installing_a_data_pack) if you don't know how to install a datapack in a world.

## How to use
First thing to know, you'll need two functions: `jw_aa:load_animation` and `jw_aa:start`.
Both need to be executed as the selected armor stand. The first function loads an animation from the storage `jw:aa` and the second one starts the animation according to the parameters.
### Structure
An animation is loaded in the `jw:aa` storage at the path `animation`. Here follows the animation's structure.
```
{
	reversed: [1],			# Your animation keyframes have been reversed. (e.g. to obtain [1,2,3,4], keyframes order is set to [4,3,2,1])
	looping: <0|1>, 			# Does the animation restarts itself at the end of it.
	resetToDefault: <0|1>,		# Does the armorstand goes back at its original place and pose when the animation finishes.
	keyframes: Array<Keyframe>	# List of keyframes
}
```
To load an animation, just execute this command: `data merge storage jw:aa {animation:<your_animation>}`
Now, let's talk about keyframes.
A keyframe will be decomposed like that
```
<Keyframe> {
	delay: <Int>, 			# Number of ticks after what the next keyframe is read.
	Pose: <Compound>, 		# The pose that the armorstand takes, same as the NBT (Cf. https://minecraft.fandom.com/wiki/Armor_Stand#Entity_data).
	Pos: Array<double> 		# Relative position from the origin.
	Rotation: Array<float> 				# Rotation applied around the Y axis.
}
```

### Plugin to use
I developed a plugin to easily create animation and export it to a .mcfunction file.
Check it here: https://github.com/JeffWooden/ArmorStandAnimator-BlockbenchPlugin

## License
[Armor Stand Animator](https://www.planetminecraft.com/data-pack/armor-stand-animator/) © 2021 by [JeffWooden](https://www.planetminecraft.com/member/jeffwooden/) is licensed under [Attribution-NonCommercial 4.0 International](https://creativecommons.org/licenses/by-nc/4.0/)
If you wish to present this datapack, please make sure to provide appropriate credits like these:
```
Armor Stand Animator by JeffWooden
Link to the datapack project: https://www.planetminecraft.com/data-pack/armor-stand-animator/
Creator Page: https://www.planetminecraft.com/member/jeffwooden/
```