.class Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;-><init>(Lcom/android/server/policy/LegacyGlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get38(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get38(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/LegacyGlobalActions$Action;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get40(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2d
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get16(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2a

    :cond_3d
    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showConditional()Z

    move-result v3

    if-eqz v3, :cond_2a

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_46
    return v1
.end method

.method public getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;
    .registers 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get38(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_49

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get38(Lcom/android/server/policy/LegacyGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/LegacyGlobalActions$Action;

    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get40(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2d

    :cond_2a
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2d
    iget-object v3, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v3}, Lcom/android/server/policy/LegacyGlobalActions;->-get16(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_3d

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2a

    :cond_3d
    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->showConditional()Z

    move-result v3

    if-eqz v3, :cond_2a

    if-ne v1, p1, :cond_46

    return-object v0

    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_49
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " out of range of showable actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get40(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v5}, Lcom/android/server/policy/LegacyGlobalActions;->-get16(Lcom/android/server/policy/LegacyGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v1}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {v2}, Lcom/android/server/policy/LegacyGlobalActions;->-get12(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/server/policy/LegacyGlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .registers 3

    invoke-virtual {p0, p1}, Lcom/android/server/policy/LegacyGlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/LegacyGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/LegacyGlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
