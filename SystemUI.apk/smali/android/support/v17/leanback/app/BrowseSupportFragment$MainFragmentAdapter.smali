.class public Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;
.super Ljava/lang/Object;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MainFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/support/v4/app/Fragment;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFragment:Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

.field private mScalingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    return-void
.end method


# virtual methods
.method public final getFragment()Landroid/support/v4/app/Fragment;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getFragmentHost()Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHost;
    .registers 2

    iget-object v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    return-object v0
.end method

.method public isScalingEnabled()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mScalingEnabled:Z

    return v0
.end method

.method public isScrolling()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionEnd()V
    .registers 1

    return-void
.end method

.method public onTransitionPrepare()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onTransitionStart()V
    .registers 1

    return-void
.end method

.method public setAlignment(I)V
    .registers 2

    return-void
.end method

.method public setEntranceTransitionState(Z)V
    .registers 2

    return-void
.end method

.method public setExpand(Z)V
    .registers 2

    return-void
.end method

.method setFragmentHost(Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mFragmentHost:Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentHostImpl;

    return-void
.end method

.method public setScalingEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrowseSupportFragment$MainFragmentAdapter;->mScalingEnabled:Z

    return-void
.end method
