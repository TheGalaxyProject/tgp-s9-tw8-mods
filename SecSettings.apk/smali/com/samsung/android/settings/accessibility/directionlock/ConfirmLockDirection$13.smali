.class Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;
.super Landroid/os/CountDownTimer;
.source "ConfirmLockDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;JJ)V
    .registers 6

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    sget-object v1, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;->NeedToUnlock:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-wrap4(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$Stage;)V

    return-void
.end method

.method public onTick(J)V
    .registers 10

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v0, v2

    div-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_28

    if-ne v0, v4, :cond_28

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1210b8

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_27
    return-void

    :cond_28
    div-int/lit8 v1, v0, 0x3c

    if-nez v1, :cond_49

    if-le v0, v4, :cond_49

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1210b9

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_49
    div-int/lit8 v1, v0, 0x3c

    if-ne v1, v4, :cond_6a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    new-array v3, v4, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1210b6

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_6a
    div-int/lit8 v1, v0, 0x3c

    if-le v1, v4, :cond_8d

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    new-array v3, v4, [Ljava/lang/Object;

    div-int/lit8 v4, v0, 0x3c

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1210b7

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_8d
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->-get8(Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection$13;->this$0:Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f1210b5

    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/settings/accessibility/directionlock/ConfirmLockDirection;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_27
.end method