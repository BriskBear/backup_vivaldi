# Backup Vivaldi  
_Preserve Bookmarks and Search Settings for when updates destroy them_  

---  

__Dependencies:__  
  - sudo privileges  _# This repo assumes you're using /etc/xdg/vivaldi, so it needs to be able to write there_  

## Installation: 
_Optional_  
  1. copy `backup_vivaldi.sh` to `/etc/profile.d/`  _# This will have it auto-load the functions when /etc/profile is loaded_  

## Usage:  
  1. If 'installed' as above reload the profile `. /etc/profile`  and use `backup-vivaldi`  
      - This creates a `$HOME/.config/vivaldi-config.bak.tbz2` from your current vivaldi configuration  
  2. When you need to restore ( fresh install, update borked your config ) use `restore-vivaldi`  
      - This assumes you have a config backed up at `$HOME/.config/vivaldi-config.bak.tbz2`  
