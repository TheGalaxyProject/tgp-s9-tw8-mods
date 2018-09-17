.class Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;
.super Ljava/lang/Object;
.source "WifiApWhitelistDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)V

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

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    :cond_18
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 15

    const/16 v6, 0x20

    const/4 v9, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    if-le v5, v6, :cond_145

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11d

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    if-gt v5, v6, :cond_11d

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    if-le v5, v6, :cond_10d

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    rsub-int/lit8 v5, v5, 0x20

    add-int v6, p2, p4

    invoke-virtual {v4, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int v3, v5, v6

    add-int v5, p2, p4

    invoke-virtual {v4, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int v6, p2, p4

    invoke-virtual {v4, p2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-le v5, v6, :cond_ef

    move v0, p2

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_63
    if-gt v1, v3, :cond_87

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->isEnclosedAlphanumSuppplement(I)Z

    move-result v5

    if-eqz v5, :cond_7a

    mul-int/lit8 v2, v2, 0x2

    :cond_7a
    add-int v5, v0, v2

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v1, v5

    goto :goto_63

    :cond_87
    if-le v0, p2, :cond_df

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v4, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int v7, p2, p4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_a4
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    if-nez v5, :cond_12b

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12217a

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_c7
    :goto_c7
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    :goto_de
    return-void

    :cond_df
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    :cond_ef
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    add-int v6, p2, v3

    invoke-virtual {v4, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int v7, p2, p4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    :cond_10d
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    :cond_11d
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/EditText;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a4

    :cond_12b
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_c7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_c7

    :cond_145
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog$3;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-static {v5, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;->-set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWhitelistDialog;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_de
.end method
