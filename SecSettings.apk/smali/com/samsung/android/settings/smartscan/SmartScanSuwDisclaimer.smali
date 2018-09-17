.class public Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;
.super Landroid/app/Activity;
.source "SmartScanSuwDisclaimer.java"


# instance fields
.field mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    return-void
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->addVisibilityFlag(Landroid/view/View;I)V

    return-void

    :cond_a
    return-void
.end method

.method private addImmersiveFlagsToWindow(Landroid/view/Window;I)V
    .registers 5

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v1, p2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    return-void
.end method


# virtual methods
.method public addVisibilityFlag(Landroid/view/View;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public hideSystemBars(Landroid/view/Window;)V
    .registers 4

    const/16 v0, 0x1202

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_a

    const/16 v0, 0x1602

    :cond_a
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method protected initSetupWizardUi()V
    .registers 11

    const v9, 0x7f080786

    const/4 v8, 0x0

    const v0, 0x7f0a0663

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    const v0, 0x7f0a0599

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    const v0, 0x7f0a059a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f0a0595

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v7, :cond_53

    if-eqz v5, :cond_4b

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4b
    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;)V

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_53
    if-eqz v6, :cond_6b

    if-eqz v5, :cond_62

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_62
    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;ILandroid/widget/LinearLayout;)V

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6b
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f0d02ba

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setContentView(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->initSetupWizardUi()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setSuwDisclaimerScroll()V

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->hideSystemBars(Landroid/view/Window;)V

    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->setIndicatorTransparency()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .registers 3

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public setIndicatorTransparency()V
    .registers 3

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method protected setSuwDisclaimerScroll()V
    .registers 16

    const-string/jumbo v0, "SsstSmartScanSuwDisclaimer"

    const-string/jumbo v1, "setSuwDisclaimerScroll"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a07e0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/widget/BottomScrollView;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    const v0, 0x7f0a059a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v0, 0x7f0a0595

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v0, 0x7f0a0599

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_button_background"

    const/4 v7, 0x0

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/widget/BottomScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v14

    new-instance v0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$3;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;->mDisclaimerScroll:Lcom/samsung/android/settings/widget/BottomScrollView;

    new-instance v7, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;

    move-object v8, p0

    move-object v9, v5

    move-object v10, v6

    move v11, v2

    move-object v12, v3

    move-object v13, v4

    invoke-direct/range {v7 .. v13}, Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer$4;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanSuwDisclaimer;Landroid/widget/TextView;Landroid/widget/ImageView;ILandroid/widget/LinearLayout;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v7}, Lcom/samsung/android/settings/widget/BottomScrollView;->setOnBottomReachedListener(Lcom/samsung/android/settings/widget/BottomScrollView$OnBottomReachedListener;)V

    :cond_67
    return-void
.end method
