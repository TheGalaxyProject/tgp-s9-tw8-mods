.class Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;
.super Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;
.source "PlaybackBannerControlGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;->onCreateRowPresenter()Landroid/support/v17/leanback/widget/PlaybackRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;Landroid/support/v17/leanback/widget/Presenter;)V
    .registers 3

    iput-object p1, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;

    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    return-void
.end method


# virtual methods
.method protected onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V
    .registers 4

    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->onBindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/support/v17/leanback/media/PlaybackBannerControlGlue$2;->this$0:Landroid/support/v17/leanback/media/PlaybackBannerControlGlue;

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method protected onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/PlaybackControlsRowPresenter;->onUnbindRowViewHolder(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
