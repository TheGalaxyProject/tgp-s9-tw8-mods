.class Lcom/android/systemui/statusbar/policy/CallbackHandler$13;
.super Ljava/lang/Object;
.source "CallbackHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/CallbackHandler;->setOperatorLogoIconVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$13;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$13;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$13;->this$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->-get0(Lcom/android/systemui/statusbar/policy/CallbackHandler;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$13;->val$visible:Z

    invoke-interface {v0, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;->setOperatorLogoIconVisible(Z)V

    goto :goto_a

    :cond_1c
    return-void
.end method
