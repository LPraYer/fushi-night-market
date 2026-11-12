base=https://raw.githubusercontent.com/LPraYer/fushi-night-market/master/market
dl() {
  cur=$(wc -c < "$1" 2>/dev/null || echo 0)
  [ "$cur" = "$2" ] && return 0
  mkdir -p "$(dirname "$1")"
  curl -sL -C - --max-time 42 -o "$1" "$base/$1" 2>/dev/null
}
cd /root/projects/mcopilot-frontend-init/public/market || exit 1
dl "index.html" 55667
dl "assets/tex/cloth_normal.jpg" 96010
dl "assets/tex/cloth_color.jpg" 96961
dl "assets/tex/wood_color.jpg" 162656
dl "assets/tex/ground_color.jpg" 291382
dl "assets/tex/wood_normal.jpg" 101102
dl "assets/tex/wood_rough.jpg" 97398
dl "assets/tex/ground_normal.jpg" 125655
dl "assets/tex/ground_rough.jpg" 61493
dl "assets/products/chicken.jpg" 85094
dl "assets/products/skewer.jpg" 126671
dl "assets/products/ramen.jpg" 150623
dl "assets/products/boba.jpg" 55480
dl "assets/products/burger.jpg" 71226
dl "assets/products/souffle.jpg" 62570
dl "assets/models/frappe.glb" 22548
dl "assets/models/skewer-vegetables.glb" 22604
dl "assets/models/fries.glb" 59228
dl "assets/models/plate-deep.glb" 7944
dl "assets/models/meat-ribs.glb" 14364
dl "assets/models/cup-coffee.glb" 7872
dl "assets/models/barrel.glb" 26812
dl "assets/models/bowl-broth.glb" 16628
dl "assets/models/chinese.glb" 19384
dl "assets/models/corn-dog.glb" 9152
dl "assets/models/steamer.glb" 45700
dl "assets/models/pancakes.glb" 42592
dl "assets/models/soy.glb" 5144
dl "assets/models/burger-cheese-double.glb" 44420
dl "assets/models/skewer.glb" 16544
dl "assets/models/bowl-soup.glb" 11188
dl "assets/models/dim-sum.glb" 7180
dl "assets/models/Textures/colormap.png" 10715
dl "assets/models/chars/character-female-b.glb" 252140
dl "assets/models/chars/character-male-b.glb" 247332
dl "assets/models/chars/character-male-c.glb" 263104
dl "assets/models/chars/character-female-a.glb" 273448
dl "assets/models/chars/character-male-a.glb" 246916
dl "assets/models/chars/Textures/colormap.png" 8706
dl "assets/env/night.hdr" 1745132
dl "vendor/three.module.js" 1304820
dl "vendor/OrbitControls.js" 32134
dl "vendor/post/Pass.js" 1706
dl "vendor/post/UnrealBloomPass.js" 12410
dl "vendor/post/MaskPass.js" 2231
dl "vendor/post/EffectComposer.js" 4651
dl "vendor/post/ShaderPass.js" 1576
dl "vendor/post/OutputPass.js" 2524
dl "vendor/post/RenderPass.js" 1941
dl "vendor/utils/SkeletonUtils.js" 8802
dl "vendor/utils/BufferGeometryUtils.js" 31768
dl "vendor/shaders/OutputShader.js" 1490
dl "vendor/shaders/CopyShader.js" 571
dl "vendor/shaders/LuminosityHighPassShader.js" 1147
dl "vendor/loaders/RGBELoader.js" 11377
dl "vendor/loaders/GLTFLoader.js" 110029
echo DONE; find . -type f | wc -l
