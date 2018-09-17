.class public Lcom/android/systemui/statusbar/UserUtil;
.super Ljava/lang/Object;
.source "UserUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteUserWithPrompt(Landroid/content/Context;ILcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .registers 4

    new-instance v0, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;-><init>(Landroid/content/Context;ILcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/UserUtil$RemoveUserDialog;->show()V

    return-void
.end method
