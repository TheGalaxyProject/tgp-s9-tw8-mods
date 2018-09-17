.class public abstract Lcom/android/systemui/qs/bar/QSBarItem;
.super Landroid/widget/LinearLayout;
.source "QSBarItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/QSBarItem$Callback;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected mBarItemView:Landroid/view/View;

.field private mBarName:Ljava/lang/String;

.field protected mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

.field private mIsOnTop:Z

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bar."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/QSBarItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getAnimator()Lcom/android/systemui/qs/TouchAnimator;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getBarHeight()I
.end method

.method public getBarName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSBarItem;->mBarName:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isOnTop()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QSBarItem;->mIsOnTop:Z

    return v0
.end method

.method public onEmergencyModeChanged()V
    .registers 1

    return-void
.end method

.method public onExpandingFinished(F)V
    .registers 2

    return-void
.end method

.method public onFragmentCreated()V
    .registers 1

    return-void
.end method

.method public onQsClosed()V
    .registers 1

    return-void
.end method

.method public onShowingDetail(Z)V
    .registers 2

    return-void
.end method

.method public setBarName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSBarItem;->mBarName:Ljava/lang/String;

    return-void
.end method

.method public setBarOnTop(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/QSBarItem;->mIsOnTop:Z

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/bar/QSBarItem$Callback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSBarItem;->mCallback:Lcom/android/systemui/qs/bar/QSBarItem$Callback;

    return-void
.end method

.method public setPosition(F)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_d
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSBarItem;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
