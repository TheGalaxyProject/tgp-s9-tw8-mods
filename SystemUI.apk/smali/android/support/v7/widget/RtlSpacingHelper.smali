.class Landroid/support/v7/widget/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    iput v1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_6
.end method

.method public getStart()I
    .registers 2

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    goto :goto_6
.end method

.method public setAbsolute(II)V
    .registers 5

    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eq p1, v1, :cond_b

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_b
    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :cond_11
    return-void
.end method

.method public setDirection(Z)V
    .registers 4

    const/high16 v1, -0x80000000

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    iput-boolean p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_26

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq v0, v1, :cond_20

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    :goto_15
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq v0, v1, :cond_23

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    :goto_1d
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :goto_1f
    return-void

    :cond_20
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_15

    :cond_23
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_1d

    :cond_26
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    if-eq v0, v1, :cond_37

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    :goto_2c
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    if-eq v0, v1, :cond_3a

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    :goto_34
    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_1f

    :cond_37
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    goto :goto_2c

    :cond_3a
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    goto :goto_34

    :cond_3d
    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitLeft:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    iget v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mExplicitRight:I

    iput v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_1f
.end method

.method public setRelative(II)V
    .registers 5

    const/high16 v1, -0x80000000

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mStart:I

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRelative:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mIsRtl:Z

    if-eqz v0, :cond_16

    if-eq p2, v1, :cond_11

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_11
    if-eq p1, v1, :cond_15

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    :cond_15
    :goto_15
    return-void

    :cond_16
    if-eq p1, v1, :cond_1a

    iput p1, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mLeft:I

    :cond_1a
    if-eq p2, v1, :cond_15

    iput p2, p0, Landroid/support/v7/widget/RtlSpacingHelper;->mRight:I

    goto :goto_15
.end method
