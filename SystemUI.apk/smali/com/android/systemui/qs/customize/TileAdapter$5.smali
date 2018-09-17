.class Lcom/android/systemui/qs/customize/TileAdapter$5;
.super Ljava/lang/Object;
.source "TileAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/TileAdapter;->onBindViewHolder(Lcom/android/systemui/qs/customize/TileAdapter$Holder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/TileAdapter;

.field final synthetic val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/TileAdapter;Lcom/android/systemui/qs/customize/TileAdapter$Holder;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    iput-object p2, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->val$holder:Lcom/android/systemui/qs/customize/TileAdapter$Holder;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/TileAdapter$Holder;->getAdapterPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get0(Lcom/android/systemui/qs/customize/TileAdapter;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1, v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap1(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V

    :goto_13
    return-void

    :cond_14
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/TileAdapter;->-get2(Lcom/android/systemui/qs/customize/TileAdapter;)I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1, v0, p1}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap2(Lcom/android/systemui/qs/customize/TileAdapter;ILandroid/view/View;)V

    goto :goto_13

    :cond_22
    iget-object v1, p0, Lcom/android/systemui/qs/customize/TileAdapter$5;->this$0:Lcom/android/systemui/qs/customize/TileAdapter;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/customize/TileAdapter;->-wrap3(Lcom/android/systemui/qs/customize/TileAdapter;I)V

    goto :goto_13
.end method
