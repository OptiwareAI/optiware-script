[English](README-en.md) | [官話](README-cmn.md)

<div lang="yue-HK">

<h1 align="center">Optiware</h1>


---



**拼音方案**

**演示**

| 粵語拼音                   | 粵語拼音（IPA 版）        |
| -------------------------- | ------------------------- |
| ![聲調版](./demo/tone.gif) | ![IPA 版](./demo/ipa.gif) |

- 其他拼音方案嘅排版工具：[`CanCLID/optiware-ai-schemes-editor`]

## 使用説明

### 聲調輸入

輸入嗰陣可以忽略聲調，如果想打埋聲調，對應鍵位係：

1. v：陰平，打 `siv` 出「詩」；上陰入，打 `sikv` 出「色」
2. x：陰上，打 `six` 出「史」
3. q：陰去，打 `siq` 出「試」；下陰入，打 `sekq` 出「錫」
4. vv：陽平，打 `sivv` 出「時」
5. xx：陽上，打 `sixx` 出「市」
6. qq：陽去，打 `siqq` 出「事」；陽入，打 `sikqq` 出「食」

### 添加模糊音支援

本方案預設**唔支援**任何模糊音同懶音，即區分 n-/l-, &empty;-/ng- 等常見懶音。如果想支援模糊音，先打開 `jyut6ping3.schema.yaml`，拉到下面 `speller/algebra:` 部分，可以見到幾行註釋咗嘅代碼。想要支援某個或者幾個模糊音，就將相應嘅嗰行代碼取消註釋（刪咗前面個 `#` 去），例如要支援 n-/l- 不分，就改成噉：

```yaml
# 取消下行註釋，支援 n- 併入 l- ，如「你」讀若「理」
- derive/^n(?!g)/l/
```

然後重新部署，試下打 lei hou，發現都出得到「你好」嘞。

### 用字標準切換

本方案預設採用 OpenCC 用字標準，喺方案選單中顯示為「傳統漢字」。亦都支援**香港傳統漢字**、**臺灣傳統漢字**同**大陆简化汉字**。要切換用字標準，撳 <kbd>Ctrl</kbd> 同 <kbd>`</kbd> 兩粒掣，就會顯示選單，然後就可以揀用字標準嘞。

### Emoji 輸入

撳 <kbd>Ctrl</kbd> 同 <kbd>`</kbd> 兩粒掣打開選單，然後撳 <kbd>2</kbd>，揀「有 Emoji」就可以啓用 emoji——當你打一個中文詞嘅時候，選字表就會出現對應嘅 emoji 符號嘞。



如果想永久啓用 emoji 嘅話，可以修改 `jyut6ping3.schema.yaml` 嘅 `switches` 做：

```yaml
- name: emoji_suggestion
  # 取消下行註釋，預設啓動 emoji
  reset: 1
  states: [冇 Emoji, 有 Emoji]
```

### 反查


- 普通話：<kbd>`</kbd>
- 粵語兩分：<kbd>r</kbd>
- 筆畫：<kbd>x</kbd>
- 倉頡五代：<kbd>v</kbd>

### 特殊符號輸入

本方案支援特殊符號輸入，輸入方法係 <kbd>/</kbd> + 符號代碼。

符號代碼睇呢度：

見。

</div>
