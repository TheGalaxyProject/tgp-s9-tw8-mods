.class Lcom/android/server/power/ShutdownThread$5$3;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$5;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/ShutdownThread$5;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread$5;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5$3;->this$1:Lcom/android/server/power/ShutdownThread$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-wrap9()V

    return-void
.end method
