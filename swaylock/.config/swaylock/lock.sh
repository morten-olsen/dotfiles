#!/bin/bash
images=()
swaylock_args=()

for output in $(swaymsg -t get_outputs | jq -r '.[] .name'); do
  image=$(mktemp --suffix=.png)
  images+=($image)
  swaylock_args+=(-i $output:$image)
  grim -t ppm -o $output - | convert - -encoding ppm -scale 3% -scale 1000% $image
done

# printf '%s\n' "${images[@]}" | xargs -P 0 -I{} convert -blur 0x8 {} {}
#corrupter -mag 2 -boffset 35 ${images[@]} ${images[@]}

echo "Arg ${swaylock_args[@]}"

swaylock ${swaylock_args[@]} -s fill 
rm ${images[@]}

