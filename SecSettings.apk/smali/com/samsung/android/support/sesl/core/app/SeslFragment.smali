.class public Lcom/samsung/android/support/sesl/core/app/SeslFragment;
.super Ljava/lang/Object;
.source "SeslFragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;,
        Lcom/samsung/android/support/sesl/core/app/SeslFragment$SavedState;
    }
.end annotation


# static fields
.field static final USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

.field private static final sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mFragmentId:I

.field mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHiddenChanged:Z

.field mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mIsNewlyAdded:Z

.field mLayoutInflater:Landroid/view/LayoutInflater;

.field mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mPerformedCreateView:Z

.field mPostponedAlpha:F

.field mRemoving:Z

.field mRestored:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mState:I

.field mTag:Ljava/lang/String;

.field mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    new-instance v0, Landroid/transition/TransitionSet;

    invoke-direct {v0}, Landroid/transition/TransitionSet;-><init>()V

    sput-object v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v2, 0x1

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetIndex:I

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->callStartTransitionListener()V

    return-void
.end method

.method private callStartTransitionListener()V
    .registers 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput-object v3, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    :goto_12
    if-nez v0, :cond_17

    :goto_14
    return-void

    :cond_15
    const/4 v0, 0x0

    goto :goto_12

    :cond_17
    invoke-interface {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;->onStartEnterTransition()V

    goto :goto_14
.end method

.method private ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    return-object v0

    :cond_7
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    goto :goto_4
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .registers 13
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    :try_start_0
    sget-object v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v7, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_1d

    :goto_a
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez p2, :cond_4d

    :goto_1c
    return-object v6

    :cond_1d
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v7, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_2a} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_2a} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_2a} :catch_a0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_2a} :catch_c2

    goto :goto_a

    :catch_2b
    move-exception v1

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :cond_4d
    :try_start_4d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {v6, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_5b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4d .. :try_end_5b} :catch_2b
    .catch Ljava/lang/InstantiationException; {:try_start_4d .. :try_end_5b} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4d .. :try_end_5b} :catch_7e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4d .. :try_end_5b} :catch_a0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4d .. :try_end_5b} :catch_c2

    goto :goto_1c

    :catch_5c
    move-exception v3

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_7e
    move-exception v2

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": make sure class name exists, is public, and has an empty constructor that is public"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_a0
    move-exception v4

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": could not find Fragment constructor"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    :catch_c2
    move-exception v5

    new-instance v7, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to instantiate fragment "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": calling Fragment constructor caused an exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    :try_start_0
    sget-object v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v2, p1}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_11

    :goto_a
    const-class v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {v2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    return v2

    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->sClassMap:Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/support/sesl/core/util/SeslSimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_a

    :catch_1f
    move-exception v1

    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mContainerId=#"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mTag="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mIndex="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, " mWho="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mBackStackNesting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAdded="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRemoving="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mFromLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mInLayout="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHidden="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mDetached="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mMenuVisible="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mHasMenu="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRetainInstance="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetainInstance:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mRetaining="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mUserVisibleHint="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mUserVisibleHint:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_11a

    :goto_e1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-nez v0, :cond_129

    :goto_e5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_138

    :goto_e9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    if-nez v0, :cond_147

    :goto_ed
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_156

    :goto_f1
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_165

    :goto_f5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    if-nez v0, :cond_174

    :goto_f9
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextAnim()I

    move-result v0

    if-nez v0, :cond_18f

    :goto_ff
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v0, :cond_1a1

    :goto_103
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    if-nez v0, :cond_1b1

    :goto_107
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_1c1

    :goto_10b
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1d1

    :goto_111
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_1f3

    :goto_115
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_217

    :goto_119
    return-void

    :cond_11a
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFragmentManager="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e1

    :cond_129
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHost="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e5

    :cond_138
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mParentFragment="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mParentFragment:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e9

    :cond_147
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mArguments="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_ed

    :cond_156
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedFragmentState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_f1

    :cond_165
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSavedViewState="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_f5

    :cond_174
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTarget="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTarget:Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mTargetRequestCode="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTargetRequestCode:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_f9

    :cond_18f
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAnim="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getNextAnim()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_ff

    :cond_1a1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mContainer="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_103

    :cond_1b1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_107

    :cond_1c1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mInnerView="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto/16 :goto_10b

    :cond_1d1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimatingAway="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getAnimatingAway()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStateAfterAnimating="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getStateAfterAnimating()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_111

    :cond_1f3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "SeslLoader Manager:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_115

    :cond_217
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_119
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_f

    return-object v1

    :cond_e
    return-object p0

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Lcom/samsung/android/support/sesl/core/app/SeslFragment;

    move-result-object v0

    return-object v0
.end method

.method public final getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_d

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    :cond_d
    return-object v0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$600(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method public getAllowReturnTransitionOverlap()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-nez v0, :cond_6

    :cond_4
    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$700(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$700(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_5
.end method

.method getAnimatingAway()Landroid/view/View;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-object v0

    :cond_a
    return-object v1
.end method

.method getAnimator()Landroid/animation/Animator;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-object v0

    :cond_a
    return-object v1
.end method

.method public final getChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_7

    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiateChildFragmentManager()V

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_24

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_2a

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_30

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    goto :goto_4

    :cond_24
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    goto :goto_4

    :cond_2a
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    goto :goto_4

    :cond_30
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_4
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$000(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method getEnterTransitionCallback()Landroid/app/SharedElementCallback;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0

    :cond_a
    return-object v1
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mExitTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$200(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method getExitTransitionCallback()Landroid/app/SharedElementCallback;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mExitTransitionCallback:Landroid/app/SharedElementCallback;

    return-object v0

    :cond_a
    return-object v1
.end method

.method public final getFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 5
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->getLayoutInflaterFactory()Landroid/view/LayoutInflater$Factory2;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/sesl/core/view/SeslLayoutInflaterCompat;->setFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    return-object v0

    :cond_17
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getNextAnim()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextAnim:I

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method getNextTransition()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransition:I

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method getNextTransitionStyle()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransitionStyle:I

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getReenterTransition()Landroid/transition/Transition;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReenterTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$300(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    return-object v1

    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getExitTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_15
.end method

.method public final getResources()Landroid/content/res/Resources;
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not attached to Activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getReturnTransition()Landroid/transition/Transition;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$100(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mReturnTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$100(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    return-object v1

    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_15
.end method

.method public getSharedElementEnterTransition()Landroid/transition/Transition;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mSharedElementEnterTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$400(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    return-object v0

    :cond_c
    return-object v1
.end method

.method public getSharedElementReturnTransition()Landroid/transition/Transition;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->USE_DEFAULT_TRANSITION:Landroid/transition/Transition;

    if-eq v0, v1, :cond_17

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    # getter for: Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mSharedElementReturnTransition:Landroid/transition/Transition;
    invoke-static {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->access$500(Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;)Landroid/transition/Transition;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    return-object v1

    :cond_17
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getSharedElementEnterTransition()Landroid/transition/Transition;

    move-result-object v0

    goto :goto_15
.end method

.method getStateAfterAnimating()I
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStateAfterAnimating:I

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public getView()Landroid/view/View;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method initState()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAdded:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRemoving:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFromLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInLayout:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRestored:Z

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mContainerId:I

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    return-void
.end method

.method instantiateChildFragmentManager()V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    new-instance v2, Lcom/samsung/android/support/sesl/core/app/SeslFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$2;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v0, v1, v2, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->attachController(Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;Lcom/samsung/android/support/sesl/core/app/SeslFragmentContainer;Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    return-void

    :cond_18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Fragment has not been attached yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isDetached()Z
    .registers 2

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mDetached:Z

    return v0
.end method

.method isHideReplaced()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mIsHideReplaced:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method final isInBackStack()Z
    .registers 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mBackStackNesting:I

    if-gtz v1, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method isPostponed()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final isStateSaved()Z
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->isStateSaved()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method noteStateNotSaved()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onAttach(Landroid/app/Activity;)V

    goto :goto_10
.end method

.method public onAttachFragment(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .registers 2

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->isStateAtLeast(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    goto :goto_a
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateAnimator(IZI)Landroid/animation/Animator;
    .registers 5

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 5

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getActivity()Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 3

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_d

    :goto_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_1c

    :goto_c
    return-void

    :cond_d
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_8

    :cond_1c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doDestroy()V

    goto :goto_c
.end method

.method public onDestroyOptionsMenu()V
    .registers 1

    return-void
.end method

.method public onDestroyView()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onDetach()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onHiddenChanged(Z)V
    .registers 2

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 6
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :cond_e
    if-nez v0, :cond_11

    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, v0, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    goto :goto_10
.end method

.method public onLowMemory()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onPause()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .registers 2

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 2

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public onResume()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 5
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStart()V

    goto :goto_8

    :cond_19
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_8
.end method

.method public onStop()V
    .registers 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .registers 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    return-void
.end method

.method peekChildFragmentManager()Lcom/samsung/android/support/sesl/core/app/SeslFragmentManager;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-object v0
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_16

    :goto_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_3d

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_5

    :cond_1c
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onActivityCreated()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_15
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_7
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v0, :cond_7

    :cond_6
    return v1

    :cond_7
    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_1a
    return v2
.end method

.method performCreate(Landroid/os/Bundle;)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_12

    :goto_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreate(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_18

    return-void

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_5

    :cond_18
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onCreate()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .registers 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v1, :cond_16

    :cond_a
    :goto_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_16
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_a
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_c

    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPerformedCreateView:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    goto :goto_4
.end method

.method performDestroy()V
    .registers 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_14

    :goto_6
    iput v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroy()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1a

    iput-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    return-void

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    goto :goto_6

    :cond_1a
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performDestroyView()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_18

    :goto_5
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDestroyView()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_3f

    :goto_15
    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mPerformedCreateView:Z

    return-void

    :cond_18
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroyView()V

    goto :goto_5

    :cond_1e
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3f
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportNextStart()V

    goto :goto_15
.end method

.method performDetach()V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onDetach()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_33

    :goto_11
    return-void

    :cond_12
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mRetaining:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchDestroy()V

    iput-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    goto :goto_11

    :cond_3f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Child SeslFragmentManager of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v1
.end method

.method performLowMemory()V
    .registers 2

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onLowMemory()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchLowMemory()V

    goto :goto_7
.end method

.method performMultiWindowModeChanged(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    goto :goto_7
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v0, :cond_7

    :cond_6
    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v0, :cond_18

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    :cond_18
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v2
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .registers 3

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v0, :cond_13

    :cond_9
    :goto_9
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_4

    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_9
.end method

.method performPause()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_12

    :goto_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_18

    return-void

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPause()V

    goto :goto_5

    :cond_18
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method performPictureInPictureModeChanged(Z)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPictureInPictureModeChanged(Z)V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    goto :goto_7
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHidden:Z

    if-eqz v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHasMenu:Z

    if-nez v1, :cond_16

    :cond_a
    :goto_a
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_5

    :cond_16
    iget-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mMenuVisible:Z

    if-eqz v1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    goto :goto_a
.end method

.method performReallyStop()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_d

    :goto_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    if-nez v0, :cond_13

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchReallyStop()V

    goto :goto_5

    :cond_13
    iput-boolean v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    if-eqz v0, :cond_2b

    :goto_19
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getRetainLoaders()Z

    move-result v0

    if-nez v0, :cond_3b

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doStop()V

    goto :goto_c

    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCheckedForLoaderManager:Z

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoadersStarted:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    goto :goto_19

    :cond_3b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doRetain()V

    goto :goto_c
.end method

.method performResume()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_16

    :goto_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_42

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    goto :goto_5

    :cond_21
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchResume()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    goto :goto_15
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_7
.end method

.method performStart()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_1a

    :goto_5
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStart()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_46

    :goto_15
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    if-nez v0, :cond_4c

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->noteStateNotSaved()V

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->execPendingActions()Z

    goto :goto_5

    :cond_25
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStart()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_46
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStart()V

    goto :goto_15

    :cond_4c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mLoaderManager:Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslLoaderManagerImpl;->doReportStart()V

    goto :goto_19
.end method

.method performStop()V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_12

    :goto_5
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mState:I

    iput-boolean v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onStop()V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_18

    return-void

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchStop()V

    goto :goto_5

    :cond_18
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method restoreChildFragmentState(Landroid/os/Bundle;)V
    .registers 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string/jumbo v1, "android:support:fragments"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-eqz v1, :cond_20

    :goto_11
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildNonConfig:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerNonConfig;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mChildFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->dispatchCreate()V

    goto :goto_3

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->instantiateChildFragmentManager()V

    goto :goto_11
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_10

    :goto_6
    iput-boolean v2, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mCalled:Z

    if-eqz v0, :cond_1a

    return-void

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v3, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mSavedViewState:Landroid/util/SparseArray;

    goto :goto_6

    :cond_1a
    new-instance v0, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SeslFragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/support/sesl/core/app/SeslSuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setAnimatingAway(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimatingAway:Landroid/view/View;

    return-void
.end method

.method setAnimator(Landroid/animation/Animator;)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mAnimator:Landroid/animation/Animator;

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 4

    iget v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v0, :cond_7

    :cond_4
    iput-object p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mArguments:Landroid/os/Bundle;

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->isStateSaved()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SeslFragment already active and state has been saved"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setHideReplaced(Z)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput-boolean p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mIsHideReplaced:Z

    return-void
.end method

.method final setIndex(ILcom/samsung/android/support/sesl/core/app/SeslFragment;)V
    .registers 5

    iput p1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "android:fragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    :goto_1c
    return-void

    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mWho:Ljava/lang/String;

    goto :goto_1c
.end method

.method setNextAnim(I)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_b

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextAnim:I

    return-void

    :cond_b
    if-nez p1, :cond_4

    return-void
.end method

.method setNextTransition(II)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    if-eqz v0, :cond_10

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransition:I

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput p2, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mNextTransitionStyle:I

    return-void

    :cond_10
    if-nez p1, :cond_4

    if-nez p2, :cond_4

    return-void
.end method

.method setOnStartEnterTransitionListener(Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;)V
    .registers 5

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    if-eq p1, v0, :cond_14

    if-nez p1, :cond_15

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-boolean v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    if-nez v0, :cond_35

    :goto_11
    if-nez p1, :cond_3a

    :goto_13
    return-void

    :cond_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to set a replacement startPostponedEnterTransition on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mAnimationInfo:Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    iput-object p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStartEnterTransitionListener:Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;

    goto :goto_11

    :cond_3a
    invoke-interface {p1}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$OnStartEnterTransitionListener;->startListening()V

    goto :goto_13
.end method

.method setStateAfterAnimating(I)V
    .registers 3

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mStateAfterAnimating:I

    return-void
.end method

.method public startPostponedEnterTransition()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    if-nez v0, :cond_c

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->ensureAnimationInfo()Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragment$AnimationInfo;->mEnterTransitionPostponed:Z

    :goto_b
    return-void

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v1, v1, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_28

    invoke-direct {p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->callStartTransitionListener()V

    goto :goto_b

    :cond_28
    iget-object v0, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentManager:Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;

    iget-object v0, v0, Lcom/samsung/android/support/sesl/core/app/SeslFragmentManagerImpl;->mHost:Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;

    invoke-virtual {v0}, Lcom/samsung/android/support/sesl/core/app/SeslFragmentHostCallback;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/support/sesl/core/app/SeslFragment$1;-><init>(Lcom/samsung/android/support/sesl/core/app/SeslFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {p0, v0}, Lcom/samsung/android/support/sesl/core/util/SeslDebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    if-gez v1, :cond_20

    :goto_e
    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    if-nez v1, :cond_2c

    :goto_12
    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    if-nez v1, :cond_3c

    :goto_16
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_20
    const-string/jumbo v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_2c
    const-string/jumbo v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mFragmentId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_3c
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/support/sesl/core/app/SeslFragment;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method
