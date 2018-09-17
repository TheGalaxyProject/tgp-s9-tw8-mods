.class public Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;
.super Landroid/app/Activity;
.source "UseIntelligentBiometricsLockSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private mBtnContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mFromSetupwizard:Z

.field private mGuideVideoContainer:Landroid/widget/FrameLayout;

.field private mGuideVideoView:Landroid/view/TextureView;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mSetupBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mSurface:Landroid/view/Surface;

.field private mSuwSetupBtn:Landroid/widget/LinearLayout;

.field private mSuwSkipBtn:Landroid/widget/LinearLayout;

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mUserId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->addVisibilityFlag(Landroid/view/View;I)V

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
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_15

    const-string/jumbo v0, "UseIntelligentBiometricsLockSettings"

    const-string/jumbo v1, "Skip pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->setResult(I)V

    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->finish()V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSetupBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_11

    :cond_1d
    const-string/jumbo v0, "UseIntelligentBiometricsLockSettings"

    const-string/jumbo v1, "Set up pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->setResult(I)V

    goto :goto_11
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "UseIntelligentBiometricsLockSettings"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mContext:Landroid/content/Context;

    const v5, 0x7f0d02bc

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mUserId:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "fromSetupwizard"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mFromSetupwizard:Z

    const v5, 0x7f0a07da

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const v5, 0x7f0a07e2

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/TextureView;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v5, :cond_c1

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v5, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700f1

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    sub-int v3, v5, v6

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v5}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    int-to-double v6, v3

    const-wide v8, 0x3fe0a3d700000000L    # 0.5199999809265137

    mul-double/2addr v6, v8

    const-wide v8, 0x3ff2147ae147ae14L    # 1.13

    div-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    int-to-double v6, v3

    const-wide v8, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-double v6, v3

    const-wide v8, 0x3fe0a3d700000000L    # 0.5199999809265137

    mul-double/2addr v6, v8

    double-to-int v5, v6

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v5, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v5, "UseIntelligentBiometricsLockSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GuideVideo height is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v7}, Landroid/view/TextureView;->getHeight()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c1
    const v5, 0x7f0a08f8

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mBtnContainer:Landroid/widget/LinearLayout;

    const v5, 0x7f0a01ca

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/widget/BottomBarButton;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSetupBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

    const v5, 0x7f0a0135

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSetupwizardButtonContainer:Landroid/view/View;

    const v5, 0x7f0a07c9

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    const v5, 0x7f0a079f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSetupBtn:Lcom/samsung/android/settings/widget/BottomBarButton;

    invoke-virtual {v5, p0}, Lcom/samsung/android/settings/widget/BottomBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mFromSetupwizard:Z

    if-eqz v5, :cond_164

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_10c

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mBtnContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_10c
    :goto_10c
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "show_button_background"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_133

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_133

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080786

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_133
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_14e

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v4, :cond_14e

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080786

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14e
    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mFromSetupwizard:Z

    if-eqz v5, :cond_170

    const/4 v5, 0x4

    invoke-static {v5}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v5

    if-nez v5, :cond_160

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->hideSystemBars(Landroid/view/Window;)V

    :cond_160
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->setIndicatorTransparency()V

    :goto_163
    return-void

    :cond_164
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v5, :cond_10c

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSetupwizardButtonContainer:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10c

    :cond_170
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_163
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "UseIntelligentBiometricsLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mGuideVideoView:Landroid/view/TextureView;

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSurface:Landroid/view/Surface;

    :cond_35
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 9

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSurface:Landroid/view/Surface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/raw/sem_intelligentscan_help"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_65

    :try_start_2c
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_3d
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_5b} :catch_66
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_5b} :catch_66
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_5b} :catch_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_5b} :catch_66

    :goto_5b
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_65
    return-void

    :catch_66
    move-exception v0

    const-string/jumbo v2, "UseIntelligentBiometricsLockSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .registers 2

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    const-string/jumbo v1, "UseIntelligentBiometricsLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onWindowFocusChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->mFromSetupwizard:Z

    if-eqz v1, :cond_3a

    if-eqz p1, :cond_3a

    const-string/jumbo v1, "UseIntelligentBiometricsLockSettings"

    const-string/jumbo v2, "onWindowFocusChanged : mFromSetupwizard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->hideSystemBars(Landroid/view/Window;)V

    :cond_3a
    return-void
.end method

.method public setIndicatorTransparency()V
    .registers 3

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/UseIntelligentBiometricsLockSettings;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
