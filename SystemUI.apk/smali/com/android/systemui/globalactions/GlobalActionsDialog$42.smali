.class Lcom/android/systemui/globalactions/GlobalActionsDialog$42;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;->hideDecorView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field final synthetic val$tempView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;->val$tempView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$42;->val$tempView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
