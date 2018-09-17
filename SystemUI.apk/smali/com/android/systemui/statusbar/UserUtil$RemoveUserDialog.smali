.class final Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "UserUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/UserUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoveUserDialog"
.end annotation


# instance fields
.field private final mUserId:I

.field private final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120b1b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->setTitle(I)V

    const v0, 0x7f120b19

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const v0, 0x7f120b1a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->setCanceledOnTouchOutside(Z)V

    iput p2, p0, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->mUserId:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v0, -0x2

    if-ne p2, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->cancel()V

    :goto_6
    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v1, p0, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->removeUserId(I)V

    goto :goto_6
.end method
