.class public Lcom/android/settings/search2/SavedQueryController;
.super Ljava/lang/Object;
.source "SavedQueryController.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoaderManager:Landroid/app/LoaderManager;

.field private final mResultAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

.field private final mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;Lcom/android/settings/search2/SearchResultsAdapter;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/search2/SavedQueryController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/search2/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    iput-object p3, p0, Lcom/android/settings/search2/SavedQueryController;->mResultAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search2/SearchFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/search2/SavedQueryController;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    return-void
.end method


# virtual methods
.method public loadSavedQueries()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .registers 6

    packed-switch p1, :pswitch_data_2c

    const/4 v0, 0x0

    return-object v0

    :pswitch_5
    new-instance v0, Lcom/android/settings/search2/SavedQueryRecorder;

    iget-object v1, p0, Lcom/android/settings/search2/SavedQueryController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "remove_query"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search2/SavedQueryRecorder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :pswitch_14
    new-instance v0, Lcom/android/settings/search2/SavedQueryRemover;

    iget-object v1, p0, Lcom/android/settings/search2/SavedQueryController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "remove_query"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/search2/SavedQueryRemover;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0

    :pswitch_23
    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryController;->mSearchFeatureProvider:Lcom/android/settings/search2/SearchFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/search2/SavedQueryController;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/search2/SearchFeatureProvider;->getSavedQueryLoader(Landroid/content/Context;)Lcom/android/settings/search2/SavedQueryLoader;

    move-result-object v0

    return-object v0

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_5
        :pswitch_14
        :pswitch_23
    .end packed-switch
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .registers 6

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    :goto_7
    return-void

    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_7

    :pswitch_10
    iget-object v0, p0, Lcom/android/settings/search2/SavedQueryController;->mResultAdapter:Lcom/android/settings/search2/SearchResultsAdapter;

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Lcom/android/settings/search2/SearchResultsAdapter;->displaySavedQuery(Ljava/util/List;)I

    goto :goto_7

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_8
        :pswitch_10
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .registers 2

    return-void
.end method

.method public removeQuery(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "remove_query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/search2/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method

.method public saveQuery(Ljava/lang/String;)V
    .registers 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "remove_query"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/search2/SavedQueryController;->mLoaderManager:Landroid/app/LoaderManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method
