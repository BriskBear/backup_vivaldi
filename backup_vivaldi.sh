# Backup Vivaldi configuration : 

function backup-vivaldi() {
  excludes=( "/etc/xdg/vivaldi/Default/Cache/*" "/etc/xdg/vivaldi/Default/Service Worker/CacheStorage/*" "/etc/xdg/vivaldi/Default/Mail/*" )
  source_dir=/etc/xdg/vivaldi/Default
  target_leaf=$HOME/.config/vivaldi-config.bak.tbz2

  tar -cjf $target_leaf --exclude=${excludes[0]} --exclude=${excludes[1]} --exclude=${excludes[2]} $source_dir
}

function restore-vivaldi() {
  source_leaf=$HOME/.config/vivaldi-config.bak.tbz2
  target_dir=/etc/xdg/vivaldi/Default
  
  [[ -d $target_dir ]] && sudo rm -rf $target_dir
  sudo tar -xf $source_leaf -C /
}
