.class public Lcom/samsung/android/settings/boostmode/BoostBrightnessSolutionManager;
.super Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;
.source "BoostBrightnessSolutionManager.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/powersaving/BrightnessSolutionManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getPreviousMaxBrightnessValue(Landroid/content/Context;I)I
    .registers 4

    const-string/jumbo v0, "pbm_maximum_brightness"

    invoke-static {p1, v0, p2}, Lcom/samsung/android/settings/boostmode/BoostUtils;->getBoostModeValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
