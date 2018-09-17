.class Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApDialogSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    const v7, 0x1090009

    const v6, 0x1090008

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_9b

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-wrap0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Z

    move-result v3

    if-eqz v3, :cond_9b

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3, v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_33
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    if-ge v1, v3, :cond_4e

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get21(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_33

    :cond_4e
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    if-lez v3, :cond_86

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v1

    :goto_5c
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_86

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get22(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v5

    sub-int v5, v1, v5

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    :cond_86
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    :cond_9a
    :goto_9a
    return-void

    :cond_9b
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    if-lez v3, :cond_f2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-set5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v1

    :goto_bb
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_dd

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get22(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_bb

    :cond_dd
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    goto :goto_9a

    :cond_f2
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    sget-boolean v3, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G_BASED_ON_COUNTRY:Z

    if-eqz v3, :cond_14a

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_9a

    :cond_14a
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;->this$0:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->-get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_9a
.end method
