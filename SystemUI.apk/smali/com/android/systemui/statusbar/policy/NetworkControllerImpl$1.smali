.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;
.super Landroid/os/Handler;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_366

    :cond_a
    :goto_a
    return-void

    :pswitch_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "ZVV"

    sget-object v6, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_146

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_c0

    const-string/jumbo v5, "\n"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_9f

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-boolean v5, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_aa

    if-eqz v1, :cond_96

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050151

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ef

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_96
    :goto_96
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_9f
    :goto_9f
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :cond_aa
    if-eqz v1, :cond_96

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_96

    :cond_c0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    if-eqz v5, :cond_9f

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    sget-boolean v5, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-eqz v5, :cond_130

    if-eqz v1, :cond_125

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050151

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int/2addr v5, v0

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8, v8, v8, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_125
    :goto_125
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_9f

    :cond_130
    if-eqz v1, :cond_125

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703f0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_125

    :cond_146
    sget-boolean v5, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_INFO_AT_PLMN:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_152

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    sput-object v5, Lcom/android/keyguard/CarrierText;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    :cond_152
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get5(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;ILandroid/widget/TextView;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateCarrierTextInfo()V

    goto/16 :goto_a

    :pswitch_181
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_a

    if-eqz v3, :cond_a

    const-string/jumbo v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_20a

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_1eb

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1e2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1e2
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_1eb
    :goto_1eb
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25c

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_20a
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    if-eqz v5, :cond_1eb

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_247

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_247
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_1eb

    :cond_25c
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :pswitch_267
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2f0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_2d1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2c8

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700bf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_2c8
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    :cond_2d1
    :goto_2d1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_344

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :cond_2f0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getEllipsize()Landroid/text/TextUtils$TruncateAt;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v5, v6, :cond_2d1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setLines(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_32f

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700c0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_32f
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_2d1

    :cond_344
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    :pswitch_34f
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get7(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->-get7(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    :pswitch_data_366
    .packed-switch 0x0
        :pswitch_b
        :pswitch_34f
        :pswitch_181
        :pswitch_267
    .end packed-switch
.end method
