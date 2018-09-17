.class Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;
.super Ljava/lang/Object;
.source "WifiApDeviceInfoPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    if-eqz p1, :cond_18

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_18

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;Ljava/lang/String;)Ljava/lang/String;

    :cond_18
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 13

    const/4 v7, 0x0

    const/16 v6, 0x20

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-le v4, v6, :cond_e4

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d7

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-gt v4, v6, :cond_d7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x1

    if-le v4, v5, :cond_c7

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_b9

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_4b
    if-gt v1, v6, :cond_63

    invoke-virtual {v3, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int v4, v0, v2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v1, v4

    add-int/2addr v0, v2

    goto :goto_4b

    :cond_63
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v4

    sub-int v5, v0, v2

    invoke-virtual {v3, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_72
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f12217a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    :cond_b8
    :goto_b8
    return-void

    :cond_b9
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v3, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    :cond_c7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    :cond_d7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_72

    :cond_e4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    if-ge v4, v6, :cond_b8

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/TextView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/widget/EditText;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference$1;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApDeviceInfoPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0600b4

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_b8
.end method
