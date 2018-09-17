.class public Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
.super Ljava/lang/Object;
.source "BrightnessSolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mFromExPopup:Z

.field private mLockForPreview:Z

.field private mOnePercent:F

.field private mPrevMode:I

.field private mPreviousMaxBrightnessValue:I

.field private observer:Landroid/database/ContentObserver;

.field private orgBrightness:I

.field private pm:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)I
    .registers 2

    iget v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->pm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;I)I
    .registers 2

    iput p1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 9

    const/4 v5, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager$1;-><init>(Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->pm:Landroid/os/PowerManager;

    iput-boolean v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mFromExPopup:Z

    iput-boolean v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->pm:Landroid/os/PowerManager;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager;->getCurrentBrightness(Z)F

    move-result v2

    float-to-int v0, v2

    iput p2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPrevMode:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->getPreviousMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x5a

    iput v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->getPreviousMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    div-float v1, v4, v2

    iget v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    mul-float/2addr v2, v1

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    iget v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mOnePercent:F

    const-string/jumbo v2, "BSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mPreviousMaxBrightnessValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", prevScale: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", orgBrightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", onePercent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mOnePercent:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->registerObserver()V

    return-void
.end method

.method private registerObserver()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private unregisterObserver()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method protected getPreviousMaxBrightnessValue(Landroid/content/Context;I)I
    .registers 4

    invoke-static {p1, p2}, Lcom/samsung/android/settings/powersaving/PSMUtils;->getPSMMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public setScreenBrightnessForPreview(I)V
    .registers 13

    const/16 v10, 0xff

    const/4 v9, 0x1

    const/4 v8, -0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->unregisterObserver()V

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isBrightnessManualMode(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenBrightnessForPreview() isManualBrightnessMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2b

    if-ne p1, v8, :cond_a0

    :cond_2b
    iget-boolean v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mFromExPopup:Z

    if-eqz v5, :cond_30

    return-void

    :cond_30
    if-ne p1, v8, :cond_34

    iput-boolean v9, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mFromExPopup:Z

    :cond_34
    if-eqz v1, :cond_71

    iget v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    iget v6, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPreviousMaxBrightnessValue:I

    int-to-float v6, v6

    iget v7, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mOnePercent:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int v4, v5, v6

    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenBrightnessForPreview() rollback screen_brightness : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v4, v10, :cond_62

    const/16 v4, 0xff

    :cond_62
    if-gez v4, :cond_65

    const/4 v4, 0x0

    :cond_65
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_71
    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    iget v6, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mPrevMode:I

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->getPreviousMaxBrightnessValue(Landroid/content/Context;I)I

    move-result v0

    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenBrightnessForPreview() rollback auto_brightness_limit : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_brightness_limit"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_a0
    add-int/lit8 v5, p1, -0x5a

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mOnePercent:F

    mul-float v3, v5, v6

    iget v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    int-to-float v5, v5

    add-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v2

    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->orgBrightness:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " + "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " = previewBrightness: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v2, v10, :cond_de

    const/16 v2, 0xff

    :cond_de
    if-gez v2, :cond_e1

    const/4 v2, 0x0

    :cond_e1
    if-eqz v1, :cond_10b

    iput-boolean v9, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->mLockForPreview:Z

    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenBrightnessForPreview() screen_brightness for preview: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_10b
    const-string/jumbo v5, "BSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setScreenBrightnessForPreview() auto_brightness_limit for preview: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "auto_brightness_limit"

    invoke-static {v5, v6, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;->registerObserver()V

    return-void
.end method
