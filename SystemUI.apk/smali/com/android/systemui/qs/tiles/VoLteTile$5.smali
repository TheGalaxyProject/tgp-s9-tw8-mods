.class Lcom/android/systemui/qs/tiles/VoLteTile$5;
.super Ljava/lang/Object;
.source "VoLteTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/VoLteTile;->showNoSIMDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoLteTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/VoLteTile;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoLteTile$5;->this$0:Lcom/android/systemui/qs/tiles/VoLteTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/VoLteTile;->refreshState()V

    return-void
.end method
