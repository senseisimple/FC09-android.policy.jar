.class final Lcom/android/internal/policy/impl/PhoneWindow$DecorView;
.super Landroid/widget/FrameLayout;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/view/RootViewSurfaceTaker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecorView"
.end annotation


# instance fields
.field private final mBackgroundPadding:Landroid/graphics/Rect;

.field private mChanging:Z

.field mDefaultOpacity:I

.field private mDownY:I

.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private final mFeatureId:I

.field private final mFrameOffsets:Landroid/graphics/Rect;

.field private final mFramePadding:Landroid/graphics/Rect;

.field private mMenuBackground:Landroid/graphics/drawable/Drawable;

.field private mWatchingForMenu:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;I)V
    .registers 5
    .parameter
    .parameter "context"
    .parameter "featureId"

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 1672
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1652
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 1657
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 1659
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    .line 1661
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 1663
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 1673
    iput p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    .line 1674
    return-void
.end method

.method private drawableChanged()V
    .registers 12

    .prologue
    const/4 v10, -0x1

    .line 2043
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    if-eqz v5, :cond_6

    .line 2101
    :cond_5
    :goto_5
    return-void

    .line 2047
    :cond_6
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setPadding(IIII)V

    .line 2050
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->requestLayout()V

    .line 2051
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->invalidate()V

    .line 2053
    const/4 v4, -0x1

    .line 2060
    .local v4, opacity:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2061
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2062
    .local v2, fg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_44

    .line 2063
    if-nez v2, :cond_50

    .line 2064
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v4

    .line 2097
    :cond_44
    :goto_44
    iput v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOpacity:I

    .line 2098
    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_5

    .line 2099
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->setDefaultWindowFormat(I)V
    invoke-static {v5, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->access$700(Lcom/android/internal/policy/impl/PhoneWindow;I)V

    goto :goto_5

    .line 2065
    :cond_50
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gtz v5, :cond_83

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-gtz v5, :cond_83

    .line 2069
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v3

    .line 2070
    .local v3, fop:I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    .line 2073
    .local v1, bop:I
    if-eq v3, v10, :cond_74

    if-ne v1, v10, :cond_76

    .line 2074
    :cond_74
    const/4 v4, -0x1

    goto :goto_44

    .line 2075
    :cond_76
    if-nez v3, :cond_7a

    .line 2076
    move v4, v1

    goto :goto_44

    .line 2077
    :cond_7a
    if-nez v1, :cond_7e

    .line 2078
    move v4, v3

    goto :goto_44

    .line 2080
    :cond_7e
    invoke-static {v3, v1}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    goto :goto_44

    .line 2088
    .end local v1           #bop:I
    .end local v3           #fop:I
    :cond_83
    const/4 v4, -0x3

    goto :goto_44
.end method

.method private isOutOfBounds(II)Z
    .registers 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x5

    .line 1820
    if-lt p1, v0, :cond_15

    if-lt p2, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-gt p1, v0, :cond_15

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    if-le p2, v0, :cond_17

    :cond_15
    const/4 v0, 0x1

    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method private notifyKeytracer(Landroid/view/MotionEvent;)V
    .registers 8
    .parameter "ev"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1758
    const-string v2, "net.cdma.factory.KEYTRACE"

    const-string v3, "STOP"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "START"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1791
    :goto_12
    return-void

    .line 1763
    :cond_13
    const/4 v2, 0x7

    new-array v0, v2, [I

    .line 1764
    .local v0, dataArry:[I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.keytracer.sendKeytraceData"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1766
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    long-to-int v2, v2

    aput v2, v0, v5

    .line 1767
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    aput v2, v0, v4

    .line 1768
    const/4 v2, 0x2

    aput v5, v0, v2

    .line 1769
    const/4 v2, 0x3

    aput v5, v0, v2

    .line 1770
    const/4 v2, 0x4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    .line 1771
    const/4 v2, 0x5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v0, v2

    .line 1772
    const/4 v2, 0x6

    aput v5, v0, v2

    .line 1774
    aget v2, v0, v4

    packed-switch v2, :pswitch_data_62

    .line 1784
    :pswitch_48
    const/16 v2, 0x11

    aput v2, v0, v4

    .line 1788
    :goto_4c
    const-string v2, "KEYTRACE_DATA"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1790
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_12

    .line 1776
    :pswitch_57
    const/16 v2, 0xf

    aput v2, v0, v4

    goto :goto_4c

    .line 1779
    :pswitch_5c
    const/16 v2, 0x10

    aput v2, v0, v4

    goto :goto_4c

    .line 1774
    nop

    :pswitch_data_62
    .packed-switch 0x0
        :pswitch_57
        :pswitch_48
        :pswitch_5c
    .end packed-switch
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 13
    .parameter "event"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1678
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 1679
    .local v4, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_7f

    move v3, v9

    .line 1685
    .local v3, isDown:Z
    :goto_d
    const/16 v5, 0x19

    if-eq v4, v5, :cond_3f

    const/16 v5, 0x18

    if-eq v4, v5, :cond_3f

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeKeyUpTime:J
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)J

    move-result-wide v5

    const-wide/16 v7, 0x12c

    add-long/2addr v5, v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_3f

    .line 1692
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1694
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_3f

    .line 1695
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mVolumeControlStreamType:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$100(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v5

    const/16 v6, 0x8

    invoke-virtual {v0, v10, v5, v6}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    .line 1700
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :cond_3f
    if-eqz v3, :cond_a3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_a3

    .line 1703
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$200(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v5

    if-lez v5, :cond_81

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$200(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v5

    if-eq v5, v4, :cond_81

    .line 1707
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v4, p1, v9}, Lcom/android/internal/policy/impl/PhoneWindow;->access$400(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v2

    .line 1710
    .local v2, handled:Z
    if-nez v2, :cond_7b

    .line 1715
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1717
    if-eqz v2, :cond_7b

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 1718
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    iput-boolean v9, v5, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isHandled:Z

    .line 1722
    :cond_7b
    if-eqz v2, :cond_81

    move v5, v9

    .line 1742
    .end local v2           #handled:Z
    :goto_7e
    return v5

    .end local v3           #isDown:Z
    :cond_7f
    move v3, v10

    .line 1679
    goto :goto_d

    .line 1729
    .restart local v3       #isDown:Z
    :cond_81
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    if-eqz v5, :cond_a3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;->isOpen:Z

    if-eqz v5, :cond_a3

    .line 1730
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPreparedPanel:Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow;->access$300(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;

    move-result-object v6

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->performPanelShortcut(Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z
    invoke-static {v5, v6, v4, p1, v10}, Lcom/android/internal/policy/impl/PhoneWindow;->access$400(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$PanelFeatureState;ILandroid/view/KeyEvent;I)Z

    move-result v5

    if-eqz v5, :cond_a3

    move v5, v9

    .line 1731
    goto :goto_7e

    .line 1736
    :cond_a3
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 1737
    .local v1, cb:Landroid/view/Window$Callback;
    if-eqz v1, :cond_b8

    iget v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v5, :cond_b8

    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    move v2, v5

    .line 1739
    .restart local v2       #handled:Z
    :goto_b4
    if-eqz v2, :cond_be

    move v5, v9

    .line 1740
    goto :goto_7e

    .line 1737
    .end local v2           #handled:Z
    :cond_b8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v5

    move v2, v5

    goto :goto_b4

    .line 1742
    .restart local v2       #handled:Z
    :cond_be
    if-eqz v3, :cond_cd

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyDown(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_7e

    :cond_cd
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {v5, v6, v7, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->onKeyUp(IILandroid/view/KeyEvent;)Z

    move-result v5

    goto :goto_7e
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1923
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1924
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_10

    .line 1925
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1926
    const/4 v1, 0x1

    .line 1929
    :goto_f
    return v1

    :cond_10
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    goto :goto_f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 1749
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->notifyKeytracer(Landroid/view/MotionEvent;)V

    .line 1751
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1752
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_14

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_14

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_13
    return v1

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_13
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "ev"

    .prologue
    .line 1796
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->notifyKeytracer(Landroid/view/MotionEvent;)V

    .line 1797
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1798
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_14

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_14

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_13
    return v1

    :cond_14
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_13
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 3
    .parameter "canvas"

    .prologue
    .line 1978
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1980
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    .line 1981
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mMenuBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1983
    :cond_c
    return-void
.end method

.method public finishChanging()V
    .registers 2

    .prologue
    .line 2005
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2006
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2007
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3
    .parameter "insets"

    .prologue
    .line 2035
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2036
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 2037
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2039
    :cond_e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 4

    .prologue
    .line 2123
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2125
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2126
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_12

    .line 2127
    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    .line 2130
    :cond_12
    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    .line 2138
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #calls: Lcom/android/internal/policy/impl/PhoneWindow;->openPanelsAfterRestore()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$900(Lcom/android/internal/policy/impl/PhoneWindow;)V

    .line 2140
    :cond_1c
    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .registers 3
    .parameter "reason"

    .prologue
    .line 2154
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v0, :cond_9

    .line 2155
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->closeAllPanels()V

    .line 2157
    :cond_9
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 2144
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2146
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2147
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_12

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_12

    .line 2148
    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    .line 2150
    :cond_12
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    .line 1826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1827
    .local v0, action:I
    iget v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-ltz v3, :cond_23

    .line 1828
    if-nez v0, :cond_23

    .line 1829
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 1830
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 1831
    .local v2, y:I
    invoke-direct {p0, v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->isOutOfBounds(II)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1832
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 1833
    const/4 v3, 0x1

    .line 1839
    .end local v1           #x:I
    .end local v2           #y:I
    :goto_22
    return v3

    :cond_23
    const/4 v3, 0x0

    goto :goto_22
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1816
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v2, 0x0

    .line 2105
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2107
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelMayLongPress:Z
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$802(Lcom/android/internal/policy/impl/PhoneWindow;Z)Z

    .line 2111
    if-nez p1, :cond_18

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mPanelChordingKey:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$200(Lcom/android/internal/policy/impl/PhoneWindow;)I

    move-result v1

    if-eqz v1, :cond_18

    .line 2112
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->closePanel(I)V

    .line 2115
    :cond_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 2116
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_27

    iget v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v1, :cond_27

    .line 2117
    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    .line 2119
    :cond_27
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 4
    .parameter "eventType"

    .prologue
    .line 1903
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1919
    :goto_c
    return-void

    .line 1910
    :cond_d
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_30

    :cond_20
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    .line 1915
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_c

    .line 1917
    :cond_30
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    goto :goto_c
.end method

.method protected setFrame(IIII)Z
    .registers 14
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1934
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setFrame(IIII)Z

    move-result v1

    .line 1935
    .local v1, changed:Z
    if-eqz v1, :cond_65

    .line 1936
    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDrawingBounds:Landroid/graphics/Rect;

    .line 1937
    .local v2, drawingBounds:Landroid/graphics/Rect;
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1939
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1940
    .local v3, fg:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_5c

    .line 1941
    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;

    .line 1942
    .local v4, frameOffsets:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 1943
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 1944
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 1945
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 1946
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1947
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    .line 1948
    .local v5, framePadding:Landroid/graphics/Rect;
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    iget v8, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->left:I

    .line 1949
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->top:I

    .line 1950
    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->right:I

    .line 1951
    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    iput v6, v2, Landroid/graphics/Rect;->bottom:I

    .line 1954
    .end local v4           #frameOffsets:Landroid/graphics/Rect;
    .end local v5           #framePadding:Landroid/graphics/Rect;
    :cond_5c
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1955
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_65

    .line 1956
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1973
    .end local v0           #bg:Landroid/graphics/drawable/Drawable;
    .end local v2           #drawingBounds:Landroid/graphics/Rect;
    .end local v3           #fg:Landroid/graphics/drawable/Drawable;
    :cond_65
    return v1
.end method

.method public setSurfaceFormat(I)V
    .registers 3
    .parameter "format"

    .prologue
    .line 2172
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setFormat(I)V

    .line 2173
    return-void
.end method

.method public setSurfaceKeepScreenOn(Z)V
    .registers 4
    .parameter "keepOn"

    .prologue
    const/16 v1, 0x80

    .line 2176
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->addFlags(I)V

    .line 2178
    :goto_9
    return-void

    .line 2177
    :cond_a
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->clearFlags(I)V

    goto :goto_9
.end method

.method public setSurfaceType(I)V
    .registers 3
    .parameter "type"

    .prologue
    .line 2168
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/PhoneWindow;->setType(I)V

    .line 2169
    return-void
.end method

.method public setWindowBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 2010
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2011
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2012
    if-eqz p1, :cond_14

    .line 2013
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2017
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2019
    :cond_13
    return-void

    .line 2015
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mBackgroundPadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public setWindowFrame(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .parameter "drawable"

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p1, :cond_13

    .line 2023
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 2024
    if-eqz p1, :cond_14

    .line 2025
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 2029
    :goto_10
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->drawableChanged()V

    .line 2031
    :cond_13
    return-void

    .line 2027
    :cond_14
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFramePadding:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_10
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 5
    .parameter "originalView"

    .prologue
    .line 1989
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v0

    if-nez v0, :cond_40

    .line 1990
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v1, Lcom/android/internal/view/menu/ContextMenuBuilder;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$502(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/ContextMenuBuilder;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    .line 1991
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuCallback:Lcom/android/internal/policy/impl/PhoneWindow$ContextMenuCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/ContextMenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 1996
    :goto_23
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/view/menu/ContextMenuBuilder;->show(Landroid/view/View;Landroid/os/IBinder;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$602(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/MenuDialogHelper;)Lcom/android/internal/view/menu/MenuDialogHelper;

    .line 1997
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenuHelper:Lcom/android/internal/view/menu/MenuDialogHelper;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$600(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/MenuDialogHelper;

    move-result-object v0

    if-eqz v0, :cond_4a

    const/4 v0, 0x1

    :goto_3f
    return v0

    .line 1993
    :cond_40
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mContextMenu:Lcom/android/internal/view/menu/ContextMenuBuilder;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$500(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/view/menu/ContextMenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ContextMenuBuilder;->clearAll()V

    goto :goto_23

    .line 1997
    :cond_4a
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method public startChanging()V
    .registers 2

    .prologue
    .line 2001
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mChanging:Z

    .line 2002
    return-void
.end method

.method public superDispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1803
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1807
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1811
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;
    .registers 2

    .prologue
    .line 2164
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeInputQueueCallback:Landroid/view/InputQueue$Callback;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;
    .registers 2

    .prologue
    .line 2160
    iget v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFeatureId:I

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow;->mTakeSurfaceCallback:Landroid/view/SurfaceHolder$Callback2;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
