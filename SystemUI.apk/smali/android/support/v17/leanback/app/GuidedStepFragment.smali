.class public Landroid/support/v17/leanback/app/GuidedStepFragment;
.super Landroid/app/Fragment;
.source "GuidedStepFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/GuidedStepFragment$DummyFragment;
    }
.end annotation


# instance fields
.field private entranceTransitionType:I

.field private mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

.field private mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

.field private mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

.field private mButtonActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;"
        }
    .end annotation
.end field

.field private mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

.field private mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

.field private mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

.field private mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->entranceTransitionType:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateGuidanceStylist()Landroid/support/v17/leanback/widget/GuidanceStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onProvideFragmentTransitions()V

    return-void
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_5

    return-object p1

    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method private static isGuidedStepTheme(Landroid/content/Context;)Z
    .registers 8

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget v1, Landroid/support/v17/leanback/R$attr;->guidedStepThemeFlag:I

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v1, v2, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v5, v2, Landroid/util/TypedValue;->type:I

    const/16 v6, 0x12

    if-ne v5, v6, :cond_1e

    iget v5, v2, Landroid/util/TypedValue;->data:I

    if-eqz v5, :cond_1e

    :goto_1d
    return v3

    :cond_1e
    move v3, v4

    goto :goto_1d
.end method

.method static final isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->isAutoSaveRestoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method private resolveTheme()V
    .registers 9

    const/4 v7, -0x1

    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onProvideTheme()I

    move-result v3

    if-ne v3, v7, :cond_45

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_45

    sget v2, Landroid/support/v17/leanback/R$attr;->guidedStepTheme:I

    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v2, v5, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget v6, v5, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v4, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v4}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isGuidedStepTheme(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_40

    iput-object v4, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_34
    :goto_34
    if-nez v1, :cond_3f

    const-string/jumbo v6, "GuidedStepFragment"

    const-string/jumbo v7, "GuidedStepFragment does not have an appropriate theme set."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const/4 v1, 0x0

    const/4 v6, 0x0

    iput-object v6, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_34

    :cond_45
    if-eq v3, v7, :cond_3f

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-direct {v6, v0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    goto :goto_3f
.end method


# virtual methods
.method public collapseAction(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->collapseAction(Z)V

    :cond_11
    return-void
.end method

.method public collapseSubActions()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->collapseAction(Z)V

    return-void
.end method

.method public expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->expandAction(Landroid/support/v17/leanback/widget/GuidedAction;Z)V

    return-void
.end method

.method final getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "action_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "buttonaction_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUiStyle()I
    .registers 4

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    const-string/jumbo v1, "uiStyle"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public isExpanded()Z
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->isExpanded()Z

    move-result v0

    return v0
.end method

.method public isFocusOutEndAllowed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isFocusOutStartAllowed()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onProvideFragmentTransitions()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V

    if-eqz p1, :cond_13

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onRestoreActions(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_13
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setActions(Ljava/util/List;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    if-eqz p1, :cond_23

    invoke-virtual {p0, v1, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onRestoreButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    :cond_23
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->setButtonActions(Ljava/util/List;)V

    return-void
.end method

.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onCreateActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .registers 2

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;-><init>()V

    return-object v0
.end method

.method public onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    sget v0, Landroid/support/v17/leanback/R$layout;->lb_guidedstep_background:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public onCreateButtonActionsStylist()Landroid/support/v17/leanback/widget/GuidedActionsStylist;
    .registers 2

    new-instance v0, Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;-><init>()V

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setAsButtonActions()V

    return-object v0
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public onCreateGuidanceStylist()Landroid/support/v17/leanback/widget/GuidanceStylist;
    .registers 2

    new-instance v0, Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;-><init>()V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 29

    invoke-direct/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->resolveTheme()V

    invoke-direct/range {p0 .. p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v4, Landroid/support/v17/leanback/R$layout;->lb_guidedstep_fragment:I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/support/v17/leanback/app/GuidedStepRootLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isFocusOutStartAllowed()Z

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->setFocusOutStart(Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isFocusOutEndAllowed()Z

    move-result v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->setFocusOutEnd(Z)V

    sget v4, Landroid/support/v17/leanback/R$id;->content_fragment:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    sget v4, Landroid/support/v17/leanback/R$id;->action_fragment:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v10}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v17, Landroid/support/v17/leanback/app/GuidedStepFragment$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/app/GuidedStepFragment$1;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    new-instance v6, Landroid/support/v17/leanback/app/GuidedStepFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment$2;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    new-instance v6, Landroid/support/v17/leanback/app/GuidedStepFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment$3;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v9, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v6, Landroid/support/v17/leanback/app/GuidedStepFragment$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment$4;-><init>(Landroid/support/v17/leanback/app/GuidedStepFragment;)V

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    const/4 v5, 0x0

    const/4 v9, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;-><init>(Ljava/util/List;Landroid/support/v17/leanback/widget/GuidedActionAdapter$ClickListener;Landroid/support/v17/leanback/widget/GuidedActionAdapter$FocusListener;Landroid/support/v17/leanback/widget/GuidedActionsStylist;Z)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    new-instance v4, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v4, v5, v6}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->addAdpter(Landroid/support/v17/leanback/widget/GuidedActionAdapter;Landroid/support/v17/leanback/widget/GuidedActionAdapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;->setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->setEditListener(Landroid/support/v17/leanback/widget/GuidedActionAdapter$EditListener;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    if-eqz v4, :cond_122

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getSubActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    :cond_122
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->getActionsGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_168

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    move-object/from16 v0, v21

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14b
    :goto_14b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_167

    sget v4, Landroid/support/v17/leanback/R$id;->guidedstep_background_view_root:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v14, v13, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_167
    return-object v22

    :cond_168
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-eqz v4, :cond_1a6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    move-object/from16 v16, v0

    :goto_174
    new-instance v23, Landroid/util/TypedValue;

    invoke-direct/range {v23 .. v23}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Landroid/support/v17/leanback/R$attr;->guidedActionContentWidthWeightTwoPanels:I

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v4, v5, v0, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_14b

    sget v4, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/app/GuidedStepRootLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual/range {v23 .. v23}, Landroid/util/TypedValue;->getFloat()F

    move-result v24

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v24

    move-object/from16 v1, v21

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_14b

    :cond_1a6
    invoke-static/range {p0 .. p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v16

    goto :goto_174
.end method

.method public onDestroyView()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onDestroyView()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onDestroyView()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iput-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mSubAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iput-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iput-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapterGroup:Landroid/support/v17/leanback/widget/GuidedActionAdapterGroup;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 2

    return-void
.end method

.method public onGuidedActionEditCanceled(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V

    return-void
.end method

.method public onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onGuidedActionEditedAndProceed(Landroid/support/v17/leanback/widget/GuidedAction;)J
    .registers 4

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onGuidedActionEdited(Landroid/support/v17/leanback/widget/GuidedAction;)V

    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method public onGuidedActionFocused(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .registers 2

    return-void
.end method

.method protected onProvideFragmentTransitions()V
    .registers 15

    const/4 v13, 0x3

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v8, v9, :cond_52

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getUiStyle()I

    move-result v7

    if-nez v7, :cond_53

    const v8, 0x800005

    invoke-static {v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v1

    sget v8, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v1, v8, v11}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    sget v8, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v1, v8, v11}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    invoke-static {p0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    invoke-static {v13}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v3

    sget v8, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v3, v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v10}, Landroid/support/v17/leanback/transition/TransitionHelper;->createChangeBounds(Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v10}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v4, v0}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v4}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    :cond_3e
    :goto_3e
    const v8, 0x800003

    invoke-static {v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v2

    sget v8, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v2, v8, v11}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    sget v8, Landroid/support/v17/leanback/R$id;->guidedactions_sub_list_background:I

    invoke-static {v2, v8, v11}, Landroid/support/v17/leanback/transition/TransitionHelper;->exclude(Ljava/lang/Object;IZ)V

    invoke-static {p0, v2}, Landroid/support/v17/leanback/transition/TransitionHelper;->setExitTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    :cond_52
    return-void

    :cond_53
    if-ne v7, v11, :cond_9a

    iget v8, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->entranceTransitionType:I

    if-nez v8, :cond_84

    invoke-static {v13}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeTransition(I)Ljava/lang/Object;

    move-result-object v3

    sget v8, Landroid/support/v17/leanback/R$id;->guidedstep_background:I

    invoke-static {v3, v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    const v8, 0x800007

    invoke-static {v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v6

    sget v8, Landroid/support/v17/leanback/R$id;->content_fragment:I

    invoke-static {v6, v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    sget v8, Landroid/support/v17/leanback/R$id;->action_fragment_root:I

    invoke-static {v6, v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v10}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v6}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    :goto_80
    invoke-static {p0, v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    goto :goto_3e

    :cond_84
    const/16 v8, 0x50

    invoke-static {v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->createFadeAndShortSlide(I)Ljava/lang/Object;

    move-result-object v5

    sget v8, Landroid/support/v17/leanback/R$id;->guidedstep_background_view_root:I

    invoke-static {v5, v8}, Landroid/support/v17/leanback/transition/TransitionHelper;->include(Ljava/lang/Object;I)V

    invoke-static {v10}, Landroid/support/v17/leanback/transition/TransitionHelper;->createTransitionSet(Z)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/support/v17/leanback/transition/TransitionHelper;->addTransition(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p0, v1}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    goto :goto_80

    :cond_9a
    const/4 v8, 0x2

    if-ne v7, v8, :cond_3e

    invoke-static {p0, v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->setEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    invoke-static {p0, v12}, Landroid/support/v17/leanback/transition/TransitionHelper;->setSharedElementEnterTransition(Landroid/app/Fragment;Ljava/lang/Object;)V

    goto :goto_3e
.end method

.method public onProvideTheme()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method final onRestoreActions(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method final onRestoreButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onRestoreInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->action_fragment:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method final onSaveActions(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method final onSaveButtonActions(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    :goto_5
    if-ge v1, v2, :cond_1d

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction;

    invoke-static {v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->isSaveEnabled(Landroid/support/v17/leanback/widget/GuidedAction;)Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/GuidedStepFragment;->getButtonAutoRestoreKey(Landroid/support/v17/leanback/widget/GuidedAction;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/support/v17/leanback/widget/GuidedAction;->onSaveInstanceState(Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1d
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onSaveActions(Ljava/util/List;Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/GuidedStepFragment;->onSaveButtonActions(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public onSubGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method runImeAnimations(Z)V
    .registers 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_22

    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onImeAppearing(Ljava/util/List;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeAppearing(Ljava/util/List;)V

    :goto_16
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_22
    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mGuidanceStylist:Landroid/support/v17/leanback/widget/GuidanceStylist;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GuidanceStylist;->onImeDisappearing(Ljava/util/List;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActionsStylist:Landroid/support/v17/leanback/widget/GuidedActionsStylist;

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GuidedActionsStylist;->onImeDisappearing(Ljava/util/List;)V

    goto :goto_16
.end method

.method public setActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    :cond_d
    return-void
.end method

.method public setButtonActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonAdapter:Landroid/support/v17/leanback/widget/GuidedActionAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/GuidedStepFragment;->mButtonActions:Ljava/util/List;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GuidedActionAdapter;->setActions(Ljava/util/List;)V

    :cond_d
    return-void
.end method
