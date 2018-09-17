.class Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;
.super Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;
.source "ListRowDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/ListRowDataAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueueBasedDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->initialize()V

    iget-object v0, p0, Landroid/support/v17/leanback/app/ListRowDataAdapter$QueueBasedDataObserver;->this$0:Landroid/support/v17/leanback/app/ListRowDataAdapter;

    invoke-static {v0}, Landroid/support/v17/leanback/app/ListRowDataAdapter;->-wrap0(Landroid/support/v17/leanback/app/ListRowDataAdapter;)V

    return-void
.end method
