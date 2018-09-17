.class Landroid/support/v17/leanback/widget/TitleHelper$1;
.super Ljava/lang/Object;
.source "TitleHelper.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BrowseFrameLayout$OnFocusSearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/TitleHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/TitleHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/TitleHelper;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 7

    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    if-eq p1, v2, :cond_f

    const/16 v2, 0x21

    if-ne p2, v2, :cond_f

    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    return-object v2

    :cond_f
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_30

    const/4 v1, 0x1

    :goto_17
    if-eqz v1, :cond_32

    const/16 v0, 0x11

    :goto_1b
    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mTitleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_35

    const/16 v2, 0x82

    if-eq p2, v2, :cond_2b

    if-ne p2, v0, :cond_35

    :cond_2b
    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleHelper$1;->this$0:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/TitleHelper;->mSceneRoot:Landroid/view/ViewGroup;

    return-object v2

    :cond_30
    const/4 v1, 0x0

    goto :goto_17

    :cond_32
    const/16 v0, 0x42

    goto :goto_1b

    :cond_35
    const/4 v2, 0x0

    return-object v2
.end method
