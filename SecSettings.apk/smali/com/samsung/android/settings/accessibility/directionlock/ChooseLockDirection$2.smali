.class Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;
.super Ljava/lang/Object;
.source "ChooseLockDirection.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .registers 11

    const v3, 0x7f120852

    const v7, 0x7f120851

    const v6, 0x7f12084e

    const v5, 0x7f12084d

    const/4 v4, 0x0

    const-string/jumbo v0, "UP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_446

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3ed

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_3b3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120857

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_76
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b7
    :goto_b7
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0, p1, v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;Z)V

    :cond_bc
    :goto_bc
    const-string/jumbo v0, "DIAGONAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get29(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_68b

    invoke-static {}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->getMinimumSupportedPassLength()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_673

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_118

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get20(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_118
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_184

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)I

    move-result v1

    if-lt v0, v1, :cond_142

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get29(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_142
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_184

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_6eb

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f12084b

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_184
    :goto_184
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_19f

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    :cond_19f
    return-void

    :cond_1a0
    const-string/jumbo v0, "LEFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_251

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_4ed

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_494

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_45a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120849

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_209
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_24a
    :goto_24a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0, p1, v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;Z)V

    goto/16 :goto_bc

    :cond_251
    const-string/jumbo v0, "RIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_302

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_594

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_53b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_501

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12084c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2ba
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2fb

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2fb
    :goto_2fb
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0, p1, v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;Z)V

    goto/16 :goto_bc

    :cond_302
    const-string/jumbo v0, "DOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64f

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_63b

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get7(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get23(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5e2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_5a8

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120847

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_36b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3ac

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3ac
    :goto_3ac
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0, p1, v4}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap2(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;Ljava/lang/String;Z)V

    goto/16 :goto_bc

    :cond_3b3
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120857

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_76

    :cond_3ed
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120857

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_b7

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b7

    :cond_446
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_b7

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto/16 :goto_bc

    :cond_45a
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120849

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_209

    :cond_494
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120849

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_24a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24a

    :cond_4ed
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_24a

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v0

    if-nez v0, :cond_24a

    goto/16 :goto_bc

    :cond_501
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f12084c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2ba

    :cond_53b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12084c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2fb

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2fb

    :cond_594
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_2fb

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v0

    if-nez v0, :cond_2fb

    goto/16 :goto_bc

    :cond_5a8
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120847

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_36b

    :cond_5e2
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120847

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3ac

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3ac

    :cond_63b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get4(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$ScreenStage;

    if-ne v0, v1, :cond_3ac

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-wrap0(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Z

    move-result v0

    if-nez v0, :cond_3ac

    goto/16 :goto_bc

    :cond_64f
    const-string/jumbo v0, "FINGER_LIFT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_bc

    if-eqz p2, :cond_bc

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get5(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get26(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_bc

    :cond_673
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1205ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fe

    :cond_68b
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120840

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get6(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/accessibility/directionlock/DirectionLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_fe

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12084f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_fe

    :cond_6eb
    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->-get14(Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection$2;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;

    invoke-virtual {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ChooseLockDirection;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12084a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_184
.end method

.method public onDirectionStarted()V
    .registers 1

    return-void
.end method
