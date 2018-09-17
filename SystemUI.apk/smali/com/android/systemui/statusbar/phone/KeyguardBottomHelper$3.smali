.class Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;
.super Ljava/lang/Object;
.source "KeyguardBottomHelper.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setCallbackForDummy(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDAAffordance()V
    .registers 1

    return-void
.end method

.method public getAffordanceFalsingFactor()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getCenterIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;->getCenterIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method public getCenterIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method public getLeftIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftPreview()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxTranslationDistance()F
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;
    .registers 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper$3;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    move-result-object v0

    return-object v0
.end method

.method public getRightIcon()Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightPreview()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public needsAntiFalsing()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationToSideEnded()V
    .registers 1

    return-void
.end method

.method public onAnimationToSideStarted(ZFF)V
    .registers 4

    return-void
.end method

.method public onAnimationToSideStarted(ZFFZZ)V
    .registers 6

    return-void
.end method

.method public onIconClicked(Z)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public onSwipingAborted()V
    .registers 1

    return-void
.end method

.method public onSwipingStarted(Z)V
    .registers 2

    return-void
.end method

.method public startPhoneLaunchAnimationInSecured()V
    .registers 1

    return-void
.end method

.method public userActivity()V
    .registers 1

    return-void
.end method
