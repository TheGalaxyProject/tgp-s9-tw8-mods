.class Lcom/android/server/policy/LegacyGlobalActions$20$1;
.super Ljava/lang/Object;
.source "LegacyGlobalActions.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/LegacyGlobalActions$20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/LegacyGlobalActions$20;

.field final synthetic val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

.field final synthetic val$isPort:Z

.field final synthetic val$newItemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/server/policy/LegacyGlobalActions$20;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V
    .registers 5

    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$20;

    iput-object p2, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

    iput-object p3, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->val$newItemView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string/jumbo v0, "TAG"

    const-string/jumbo v1, "mLongPressed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$20;

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions$20;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/LegacyGlobalActions;->-set5(Lcom/android/server/policy/LegacyGlobalActions;Z)Z

    iget-object v0, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->this$1:Lcom/android/server/policy/LegacyGlobalActions$20;

    iget-object v0, v0, Lcom/android/server/policy/LegacyGlobalActions$20;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->val$action:Lcom/android/server/policy/LegacyGlobalActions$Action;

    iget-object v2, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->val$newItemView:Landroid/view/View;

    iget-boolean v3, p0, Lcom/android/server/policy/LegacyGlobalActions$20$1;->val$isPort:Z

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/policy/LegacyGlobalActions;->-wrap35(Lcom/android/server/policy/LegacyGlobalActions;Lcom/android/server/policy/LegacyGlobalActions$Action;Landroid/view/View;Z)V

    return-void
.end method
