[粵語](README.md) | [官話](README-cmn.md)

---

Schema name: ℞ `optiwareai`

`jyut6ping3` is the Jyutping input method schema, while `jyut6ping3_ipa` is the IPA typesetting version.

**Romanization Scheme**

- This schema **only** supports the _LSHK Jyutping Romanization Scheme_ (**粵拼** in Chinese):
  - [Jyutping 粵拼 | LSHK](https://www.lshk.org/jyutping)
  - [Jyutping: The Linguistics Society of Hong Kong Cantonese Romanization Scheme](https://www.jyutping.org/en/jyutping/)
  - [Jyutping](https://en.wikipedia.org/wiki/Jyutping)
- For users of other romanization schemes (e.g. Yale, EduHK), please download the corresponding patch file.

**Demo**

| Jyutping                   | Jyutping (IPA version)    |
| -------------------------- | ------------------------- |
| ![示例 1](./demo/tone.gif) | ![示例 2](./demo/ipa.gif) |

- Please find the typesetting tools for other romanization schemes.

## Instructions

### Tonal markers

While tone markers are not obligatory for typing characters, you may use the following keystrokes to specify the tone to disambiguate:

1. v: High level, e.g. `siv` → 詩; High level checked, e.g. `sikv` → 色
2. x: Medium rising, e.g. `six` → 史
3. q: Medium level, e.g. `siq`→ 試; Medium level checked, e.g. `sekq` → 錫
4. vv: Low falling, e.g. `sivv` → 時
5. xx: Low rising, e.g. `sixx` → 市
6. qq: Low level, e.g. `siqq`→ 事; Low level checked, e.g. `sikqq` → 食

### Fuzzy input

This schema **does not support by default** any fuzzy or 'lazy' pronunciations, i.e. pairs like **n-/l-** and **&empty;-/ng-** are contrastive. If you want the schema to accommodate for fuzzy pronunciations, uncomment the relevant lines under the `speller/algebra:` section in the schema file. e.g. If you want the input method to support the **n-/l-** → **l-** merger, use:

```yaml
# 取消下行註釋, 支援 n- 併入 l- , 如「你」讀若「理」
- derive/^n(?!g)/l/
```

and redeploy. Then voila, `lei hou` will now be recognized internally as 'nei hou'.

### Regional Character Variations

This schema uses the OpenCC standard character set by default--coded as「傳統漢字」in the file. If you want to switch over to the Hong Kong, Taiwanese or Mainland Chinese standard, click <kbd>Ctrl</kbd> + <kbd>`</kbd> and choose the relevant standard from the options list.

### Emoji input

Click <kbd>Ctrl</kbd> + <kbd>`</kbd> and then <kbd>2</kbd> to access the settings menu. Then, from the menu, choose 「有 Emoji」 to enable emoji input - doing so will allow the system to recognize and convert certain Chinese words into their corresponding emoji icons.

The full list of emoji icons can be found in github script folder.

Please use the following snippet under `switches` in `jyut6ping3.schema.yaml` to permanently enable emoji input.

```yaml
- name: emoji_suggestion
  # 取消下行註釋，預設啓動 emoji (i.e. uncomment the next line to permanently enable emoji input)
  reset: 1
  states: [冇 Emoji, 有 Emoji]
```

### Reverse lookup

This schema also allows the user to lookup Cantonese words with Putonghua Pinyin, stroke order and Cangjie code. Click the following button in edit mode to enable the respective reverse lookup option:

- Putonghua: <kbd>`</kbd>
- Loengfan: <kbd>r</kbd>
- Stroke order: <kbd>x</kbd>
- Cangjie (5th gen): <kbd>v</kbd>

### Special symbols

You can also insert special symbols by <kbd>/</kbd> + `symbol code`.

The complete list of symbols (and their codes) can be found in the two files below:

- [`symbols.yaml`]
- [`symbols_cantonese.yaml`](symbols_cantonese.yaml)

## Dictionary Data Source

Please find the detailed description in the wiki.

## Contribution

