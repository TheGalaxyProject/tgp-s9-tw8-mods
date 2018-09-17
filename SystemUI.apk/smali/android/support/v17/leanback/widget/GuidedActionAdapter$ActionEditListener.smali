.class Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;
.super Ljava/lang/Object;
.source "GuidedActionAdapter.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/support/v17/leanback/widget/ImeKeyMonitor$ImeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GuidedActionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionEditListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p2, v1, :cond_7

    const/4 v1, 0x6

    if-ne p2, v1, :cond_12

    :cond_7
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    const/4 v0, 0x1

    :cond_11
    :goto_11
    return v0

    :cond_12
    const/4 v1, 0x1

    if-ne p2, v1, :cond_11

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v1, v2, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndStay(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    goto :goto_11
.end method

.method public onKeyPreIme(Landroid/widget/EditText;ILandroid/view/KeyEvent;)Z
    .registers 7

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_14

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndStay(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    return v2

    :cond_14
    const/16 v0, 0x42

    if-ne p2, v0, :cond_28

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_28

    iget-object v0, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->mGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GuidedActionAdapter$ActionEditListener;->this$0:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->fillAndGoNext(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/widget/TextView;)V

    return v2

    :cond_28
    const/4 v0, 0x0

    return v0
.end method
