.class public Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;
.super Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;
.source "BrowseSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BrowseSupportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListRowFragmentFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory",
        "<",
        "Landroid/support/v17/leanback/app/RowsSupportFragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v17/leanback/app/BrowseSupportFragment$FragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/Object;)Landroid/support/v17/leanback/app/RowsSupportFragment;
    .registers 3

    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createFragment(Ljava/lang/Object;)Landroid/support/v4/app/Fragment;
    .registers 3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BrowseSupportFragment$ListRowFragmentFactory;->createFragment(Ljava/lang/Object;)Landroid/support/v17/leanback/app/RowsSupportFragment;

    move-result-object v0

    return-object v0
.end method
