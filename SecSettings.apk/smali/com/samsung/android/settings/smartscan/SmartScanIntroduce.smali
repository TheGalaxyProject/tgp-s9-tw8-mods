.class public Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;
.super Landroid/app/Activity;
.source "SmartScanIntroduce.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field private final FontScale_LARGE:F

.field private isPaused:Z

.field private mBtnContainer:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mContinueBtn:Landroid/widget/Button;

.field private mForFace:Z

.field private mFromSetupwizard:Z

.field private mGuideVideoContainer:Landroid/widget/FrameLayout;

.field private mGuideVideoView:Landroid/view/TextureView;

.field private mHandler:Landroid/os/Handler;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOriginFontScale:F

.field private mSetupwizardButtonContainer:Landroid/view/View;

.field private mSurface:Landroid/view/Surface;

.field private mSuwSetupBtn:Landroid/widget/LinearLayout;

.field private mSuwSkipBtn:Landroid/widget/LinearLayout;

.field private mUserId:I


# direct methods
.method static synthetic -wrap0(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->showDisclaimer()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->FontScale_LARGE:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iput v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    return-void
.end method

.method private addImmersiveFlagsToDecorView(Landroid/view/Window;I)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addVisibilityFlag(Landroid/view/View;I)V

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

.method private adjustFontScale()V
    .registers 8

    const v6, 0x3fa66666    # 1.3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const-string/jumbo v3, "SsstSmartScanIntroduce"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "font scale "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_62

    const-string/jumbo v3, "SsstSmartScanIntroduce"

    const-string/jumbo v4, "Font scale is bigger than Large! Change font scale"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_62
    return-void
.end method

.method private rollbackFontScale()V
    .registers 7

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    const v4, 0x3fa66666    # 1.3f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_57

    const-string/jumbo v3, "SsstSmartScanIntroduce"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Rollback Font Scale to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mOriginFontScale:F

    iput v3, v0, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const-string/jumbo v3, "window"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v3, v0, Landroid/content/res/Configuration;->fontScale:F

    iget v4, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    iput v3, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_57
    return-void
.end method

.method private setMediaPlayer(Landroid/graphics/SurfaceTexture;)V
    .registers 7

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getPackageName()Ljava/lang/String;

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
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->stop()V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_3d
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, p0, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setLooping(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_5b} :catch_66
    .catch Ljava/lang/SecurityException; {:try_start_2c .. :try_end_5b} :catch_66
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_5b} :catch_66
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_5b} :catch_66

    :goto_5b
    iget-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v3, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$2;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    :cond_65
    return-void

    :catch_66
    move-exception v0

    const-string/jumbo v2, "SsstSmartScanIntroduce"

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

.method private showDisclaimer()V
    .registers 3

    iget v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->showSmartScanDisclaimerDialog(Landroid/content/Context;IZ)V

    return-void
.end method

.method private startSuwSmartScanDisclaimer()V
    .registers 5

    const-string/jumbo v2, "SsstSmartScanIntroduce"

    const-string/jumbo v3, "startSuwSmartScanDisclaimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "com.samsung.android.settings.smartscan.SmartScanSuwDisclaimer"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_17
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->startActivity(Landroid/content/Intent;)V
    :try_end_1a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_17 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v2, "SsstSmartScanIntroduce"

    const-string/jumbo v3, "startSuwSmartScanDisclaimer : Activity Not Found !"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
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
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addImmersiveFlagsToWindow(Landroid/view/Window;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->addImmersiveFlagsToDecorView(Landroid/view/Window;I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_15

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "Skip pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setResult(I)V

    :cond_11
    :goto_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->finish()V

    return-void

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    if-eq p1, v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_11

    :cond_1d
    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "Set up pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setResult(I)V

    goto :goto_11
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 14

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v8, "SsstSmartScanIntroduce"

    const-string/jumbo v9, "onCreate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    const v8, 0x7f0d02b8

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v8, "fromSetupwizard"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const-string/jumbo v8, "for_face"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mForFace:Z

    const-string/jumbo v8, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    const v8, 0x7f0a07e1

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    const v8, 0x7f0a07e2

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/TextureView;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v8, :cond_d7

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    if-eqz v8, :cond_d7

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v8, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v8}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getScreenHeight(Landroid/content/Context;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0700f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    sub-int v6, v8, v9

    int-to-double v8, v6

    const-wide v10, 0x3fe0a3d700000000L    # 0.5199999809265137

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-double v8, v6

    const-wide v10, 0x3fc0a3d70a3d70a4L    # 0.13

    mul-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v8, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-double v8, v8

    const-wide v10, 0x3ff2147ae147ae14L    # 1.13

    div-double/2addr v8, v10

    double-to-int v8, v8

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v8, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v8, v3}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v8, "SsstSmartScanIntroduce"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "GuideVideo height is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d7
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v8

    if-nez v8, :cond_e0

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->adjustFontScale()V

    :cond_e0
    const v8, 0x7f0a05e1

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    const v8, 0x7f0a01ca

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    const v8, 0x7f0a0135

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    const v8, 0x7f0a07c9

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    const v8, 0x7f0a079f

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    iput-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    if-eqz v8, :cond_120

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mContinueBtn:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_120
    iget-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v8, :cond_197

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_12f

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mBtnContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_12f
    :goto_12f
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "show_button_background"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_156

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v7, :cond_156

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSkipBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080786

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_156
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_171

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v8, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v7, :cond_171

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSuwSetupBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f080786

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_171
    iget-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v8, :cond_1a3

    const/4 v8, 0x4

    invoke-static {v8}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v8

    if-nez v8, :cond_183

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->hideSystemBars(Landroid/view/Window;)V

    :cond_183
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setIndicatorTransparency()V

    :goto_186
    iget v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mUserId:I

    invoke-static {p0, v8}, Lcom/samsung/android/settings/smartscan/SmartScanSettingsHelper;->getSmartScanDisclaimerConfirmedValue(Landroid/content/Context;I)I

    move-result v1

    const/4 v8, 0x1

    if-ge v1, v8, :cond_196

    iget-boolean v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v8, :cond_1ab

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->startSuwSmartScanDisclaimer()V

    :cond_196
    :goto_196
    return-void

    :cond_197
    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    if-eqz v8, :cond_12f

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSetupwizardButtonContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12f

    :cond_1a3
    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_186

    :cond_1ab
    new-instance v5, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$1;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce$1;-><init>(Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;)V

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    if-eqz v8, :cond_1bc

    iget-object v8, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xc8

    invoke-virtual {v8, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_196

    :cond_1bc
    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->showDisclaimer()V

    goto :goto_196
.end method

.method public onDestroy()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->destroyDrawingCache()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    :cond_1a
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 4

    const/4 v2, 0x0

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->rollbackFontScale()V

    :cond_13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_26
    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mSurface:Landroid/view/Surface;

    :cond_31
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "SsstSmartScanIntroduce"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onResume : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    if-eqz v0, :cond_3c

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->isPaused:Z

    iget-object v0, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mGuideVideoView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-nez v0, :cond_3c

    invoke-direct {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->adjustFontScale()V

    :cond_3c
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->setMediaPlayer(Landroid/graphics/SurfaceTexture;)V

    return-void
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

    const-string/jumbo v1, "SsstSmartScanIntroduce"

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

    iget-boolean v1, p0, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->mFromSetupwizard:Z

    if-eqz v1, :cond_3a

    if-eqz p1, :cond_3a

    const-string/jumbo v1, "SsstSmartScanIntroduce"

    const-string/jumbo v2, "onWindowFocusChanged : mFromSetupwizard"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->hideSystemBars(Landroid/view/Window;)V

    :cond_3a
    return-void
.end method

.method public setIndicatorTransparency()V
    .registers 3

    const/16 v0, 0x3002

    invoke-virtual {p0}, Lcom/samsung/android/settings/smartscan/SmartScanIntroduce;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
