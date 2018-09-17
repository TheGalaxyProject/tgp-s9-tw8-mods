.class public Lcom/android/systemui/qs/QSSwitch;
.super Landroid/widget/Switch;
.source "QSSwitch.java"


# instance fields
.field private mIsCheckedWhenTouchDown:Z

.field private mIsClicked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSwitch;->isChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/qs/QSSwitch;->mIsCheckedWhenTouchDown:Z

    iput-boolean v4, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    :cond_f
    invoke-super {p0, p1}, Landroid/widget/Switch;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1d

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2c

    :cond_1d
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSwitch;->isChecked()Z

    move-result v2

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    if-nez v3, :cond_2c

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSSwitch;->mIsCheckedWhenTouchDown:Z

    if-eq v3, v2, :cond_2c

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSSwitch;->callOnClick()Z

    :cond_2c
    return v1
.end method

.method public performClick()Z
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSSwitch;->mIsClicked:Z

    invoke-super {p0}, Landroid/widget/Switch;->performClick()Z

    move-result v0

    return v0
.end method
