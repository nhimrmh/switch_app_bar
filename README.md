# Switch App Bar

Flutter project for switch app bar

## Motivation
This project clones the UI of TapTap mobile app, which has an overlay appbar appears whenever you scroll pass a portion of page

|Reference|Reference|
|---|---|
|<img src = "https://github.com/user-attachments/assets/089b8ba2-bafb-4f97-87d6-c20660bda962" width = 250/>|<img src = "https://github.com/user-attachments/assets/00061609-1b7b-4e1f-b037-d66d40ea3c08" width = 250/>|

## How to use
Wrap your children widgets with `SwitchAppBarWidget` and provide
1. placeholderAppBar: the widget that acts as an AppBar when at init state of page
2. overlayAppBar: the widget that act as an AppBar when user scroll pass `placeholderAppBar`
3. transformSpeedScale: the speed of slide up/down transition of `overlayAppBar`

|Default transformSpeedScale|transformSpeedScale = 10 (10x faster)| 
|---|---|
|<img src = "https://github.com/user-attachments/assets/9d5a02fe-1e00-4364-a542-6345bcfd81bb" width = 250/>|<img src = "https://github.com/user-attachments/assets/43d40965-bd92-47c0-910b-7f8ff4770237" width = 250/>|


