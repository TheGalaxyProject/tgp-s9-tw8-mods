.class public Lcom/samsung/android/view/animation/SineOut33;
.super Landroid/view/animation/PathInterpolator;
.source "SineOut33.java"


# direct methods
.method public constructor <init>()V
    .registers 4

    const v2, 0x3e2e147b    # 0.17f

    const v0, 0x3f2b851f    # 0.67f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    return-void
.end method
