.class Landroid/support/v17/leanback/app/OnboardingFragment$2;
.super Ljava/lang/Object;
.source "OnboardingFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/OnboardingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/OnboardingFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/OnboardingFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v2, v2, Landroid/support/v17/leanback/app/OnboardingFragment;->mLogoAnimationFinished:Z

    if-nez v2, :cond_e

    const/4 v2, 0x4

    if-eq p2, v2, :cond_c

    :goto_b
    return v0

    :cond_c
    move v0, v1

    goto :goto_b

    :cond_e
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_15

    return v1

    :cond_15
    sparse-switch p2, :sswitch_data_4a

    return v1

    :sswitch_19
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget v2, v2, Landroid/support/v17/leanback/app/OnboardingFragment;->mCurrentPageIndex:I

    if-nez v2, :cond_20

    return v1

    :cond_20
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    return v0

    :sswitch_26
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    :goto_31
    return v0

    :cond_32
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    goto :goto_31

    :sswitch_38
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    iget-boolean v1, v1, Landroid/support/v17/leanback/app/OnboardingFragment;->mIsLtr:Z

    if-eqz v1, :cond_44

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToNextPage()V

    :goto_43
    return v0

    :cond_44
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingFragment$2;->this$0:Landroid/support/v17/leanback/app/OnboardingFragment;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/OnboardingFragment;->moveToPreviousPage()V

    goto :goto_43

    :sswitch_data_4a
    .sparse-switch
        0x4 -> :sswitch_19
        0x15 -> :sswitch_26
        0x16 -> :sswitch_38
    .end sparse-switch
.end method
