# MATLAB Morse Code Converter GUI

An interactive Graphical User Interface (GUI) built in MATLAB for seamless conversion between alphanumeric text and Morse code. This tool supports real-time audio generation, visual signaling, and file-based input/output.

## 🚀 Features

* **Bidirectional Conversion:** * **Text to Morse:** Converts English characters, numbers, and symbols into Morse signals.
    * **Morse to Text:** Decodes Morse code sequences (dots and dashes) back into readable text.
* **Audio Synthesis:** Generate the classic "beep" sounds for Morse code sequences directly within MATLAB.
* **File Support:** * Open and read `.m` or text files to batch-process Morse conversions.
    * Save results to external files.
* **Interactive UI:** Built using MATLAB GUIDE, featuring intuitive text areas, conversion buttons, and a clean menu system.
* **Custom Themes:** Includes a "Theme" menu for personalizing the GUI appearance.

## 🛠️ Requirements

* MATLAB (R2016a or newer recommended)
* Audio output device (for Morse playback)

## 📖 How to Use

1.  **Launch the App:** Run the `YongWeiHian20194532.m` file in MATLAB.
2.  **Text to Morse:**
    * Type your message into the text input box.
    * Click the **Convert** button.
    * The Morse code will appear in the output window and the audio signal will play.
3.  **Morse to Text:**
    * Input a sequence of dots (`.`) and dashes (`-`).
    * Select the decode option to see the alphanumeric translation.
4.  **File Operations:**
    * Use the `File` menu to open existing scripts or save your generated Morse code.

## 📂 File Structure

* `YongWeiHian20194532.m`: Main logic and callback functions for the GUI.
* `YongWeiHian20194532.fig`: The visual layout file (ensure this is in the same folder as the `.m` file).

## 📝 Technical Details

The application uses a mapping logic to translate characters into a timing-based audio array.
- **Dot:** Short pulse.
- **Dash:** Long pulse (3x the length of a dot).
- **Spacing:** Standardized gaps between characters and words.

---
Developed as part of a MATLAB GUI programming project.
