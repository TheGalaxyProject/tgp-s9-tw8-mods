.class Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "GuestResumeSessionReceiver.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/GuestResumeSessionReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResetSessionDialog"
.end annotation


# instance fields
.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1203cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f1203cc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setCanceledOnTouchOutside(Z)V

    const v0, 0x7f1203ce

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f1203cb

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iput p2, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v0, -0x2

    if-ne p2, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/systemui/GuestResumeSessionReceiver;->-wrap0(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->dismiss()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    const/4 v0, -0x1

    if-ne p2, v0, :cond_f

    invoke-virtual {p0}, Lcom/android/systemui/GuestResumeSessionReceiver$ResetSessionDialog;->cancel()V

    goto :goto_f
.end method
