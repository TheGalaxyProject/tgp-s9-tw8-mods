.class Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;
.super Ljava/lang/Object;
.source "PlaybackSupportFragment.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    if-eqz v0, :cond_d

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;->this$0:Landroid/support/v17/leanback/app/PlaybackSupportFragment;

    iget-object v0, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;->onItemSelected(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_d
    return-void
.end method
