[粵語](README.md) | [English](README-en.md)

<div lang="cmn">


配方：℞ `cantonese`


| 粵語拼音                   | 粵語拼音（IPA 版）        |
| -------------------------- | ------------------------- ||

- 分歧拼音方案排版工具：[`CanCLID/optiware-script-schemes-editor`]

## 使用說明

### 聲調輸入

輸入時可忽略聲調，也可按照下列鍵位輸入：

1. v：陰平，打 `siv` 輸出「詩」；上陰入，打 `sikv` 輸出「色」
2. x：陰上，打 `six` 輸出「史」
3. q：陰去，打 `siq` 輸出「試」；下陰入，打 `sekq` 輸出「錫」
4. vv：陽平，打 `sivv` 輸出「時」
5. xx：陽上，打 `sixx` 輸出「市」
6. qq：陽去，打 `siqq` 輸出「事」；陽入，打 `sikqq` 輸出「食」

### 添加模糊音支援

本方案預設**不支援**任何模糊音或懶音，即區分 n-/l-, &empty;-/ng- 等常見懶音。若要啓用模糊音，先打開 `jyut6ping3.schema.yaml` ，取消 `speller/algebra:` 相應代碼的註釋（刪除前置 `#` 號）。例如想支援 n-/l- 不分，`speller/algebra:` 相應行數應改爲：

```yaml
# 取消下行註釋，支援 n- 併入 l- ，如「你」讀若「理」
- derive/^n(?!g)/l/
```

然後重新部署，試一下打 lei hou，可以看到也能輸出「你好」了。

### 用字標準切換

本方案預設採用 OpenCC 用字標準（選單中顯示為「傳統漢字」）。也支援**香港傳統漢字**、**臺灣傳統漢字**和**大陆简化汉字**。要切換用字標準，請按 <kbd>Ctrl</kbd> + <kbd>`</kbd> 然後在菜單中選擇希望使用的用字標準。

### Emoji 輸入

按 <kbd>Ctrl</kbd> + <kbd>`</kbd> 打開菜單，然後點擊 <kbd>2</kbd>，選擇「有 Emoji」，即可啓用 emoji——當你輸入一個中文詞，選字表即會出現相應的 emoji 符號。



如果想永久啓用 emoji，可以把 `jyut6ping3.schema.yaml` 中的 `switches` 修改爲：

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

本方案支持特殊符號輸入，輸入方法爲 <kbd>/</kbd> + 符號代碼。

符號代碼請見：



</div>
