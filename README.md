# Switch App Bar

Flutter project for switch app bar

## Motivation
This project clones the UI of TapTap mobile app, which has an overlay appbar appears whenever you scroll pass a portion of page

Reference 1 | Reference 2 | 
:--: | :--: | 
<video src="https://github.com/user-attachments/assets/eb652bd5-2d46-494b-9a0d-740665e40cf2"/> | <video src="https://github.com/user-attachments/assets/c625f888-8175-49d7-89a2-9cb9255361af"/> |

## How to use
Wrap your children widgets with `SwitchAppBarWidget` and provide
1. placeholderAppBar: the widget that acts as an AppBar when at init state of page
2. overlayAppBar: the widget that act as an AppBar when user scroll pass `placeholderAppBar`
3. transformSpeedScale: the speed of slide up/down transition of `overlayAppBar`

Default transformSpeedScale | transformSpeedScale = 10 (10x faster) | 
:--: | :--: | 
<video src="https://github.com/user-attachments/assets/647a8832-7ae2-49d4-8de0-7490f5616f8f"/> | <video src="https://github.com/user-attachments/assets/f4fb31a5-3242-441b-9782-4e1bab550c08"/> |
