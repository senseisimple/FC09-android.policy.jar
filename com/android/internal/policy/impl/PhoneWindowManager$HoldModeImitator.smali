.class Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoldModeImitator"
.end annotation


# instance fields
.field final ID_ALLSHARE_ACTIVITY:I

.field final ID_CAMERA_ACTIVITY:I

.field final ID_SETTINGS_ACTIVITY:I

.field final ID_VIDEO_ACTIVITY:I

.field mModeHolder:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .registers 3
    .parameter

    .prologue
    .line 2487
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2480
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_CAMERA_ACTIVITY:I

    .line 2481
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_VIDEO_ACTIVITY:I

    .line 2482
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_ALLSHARE_ACTIVITY:I

    .line 2483
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->ID_SETTINGS_ACTIVITY:I

    .line 2485
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    .line 2489
    return-void
.end method

.method private getReverse(I)Z
    .registers 4
    .parameter "index"

    .prologue
    const/4 v1, 0x1

    .line 2492
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-ne v0, v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method


# virtual methods
.method public endOfDetecting()V
    .registers 2

    .prologue
    .line 2592
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 2593
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .registers 10
    .parameter "pkg"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2497
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    if-eqz v2, :cond_15

    .line 2498
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mRecentAppsDialog:Lcom/android/internal/policy/impl/RecentApplicationsDialog;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/RecentApplicationsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2529
    :cond_14
    :goto_14
    return-void

    .line 2500
    :cond_15
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    if-eqz v2, :cond_25

    .line 2501
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mGlobalActions:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlobalActions;->isGlobalActionRunning()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2503
    :cond_25
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHomePressed:Z

    if-nez v2, :cond_14

    .line 2508
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 2509
    .local v1, sm:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->isVisible()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2511
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "menuOpened"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2512
    .local v0, menuStatus:I
    if-eq v0, v5, :cond_14

    .line 2514
    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    .line 2516
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 2517
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_14

    .line 2519
    :cond_6a
    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 2521
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 2522
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_14

    .line 2524
    :cond_87
    const-string v2, "com.sec.android.app.dlna"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 2525
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v6}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_14

    .line 2526
    :cond_9a
    const-string v2, "com.android.settings"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2527
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->getReverse(I)Z

    move-result v3

    invoke-virtual {v2, v7, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_14
.end method

.method public setHomeNeglectingMode(Ljava/lang/String;Z)V
    .registers 6
    .parameter "pkg"
    .parameter "value"

    .prologue
    .line 2596
    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2598
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$102(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 2599
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsCameraInHold:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2609
    :cond_19
    :goto_19
    return-void

    .line 2601
    :cond_1a
    const-string v0, "com.sec.android.app.videoplayer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2603
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z
    invoke-static {v0, p2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$202(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    .line 2604
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsVideoPlayerInHold:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_19

    .line 2606
    :cond_34
    const-string v0, "com.sec.android.app.dlna"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 2607
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldModeImitator;->mModeHolder:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_19
.end method
