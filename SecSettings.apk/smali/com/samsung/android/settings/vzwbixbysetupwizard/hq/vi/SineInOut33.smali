.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/SineInOut33;
.super Landroid/view/animation/PathInterpolator;
.source "SineInOut33.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    const v0, 0x3ea8f5c3    # 0.33f

    const/4 v1, 0x0

    const v2, 0x3f2b851f    # 0.67f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
